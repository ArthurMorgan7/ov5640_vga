module sdram_read
(
input wire sys_clk , //系统时钟,频率100MHz
input wire sys_rst_n , //复位信号,低电平有效
input wire init_end , //初始化结束信号
input wire rd_en , //读使能
input wire [23:0] rd_addr , //读SDRAM地址
input wire [15:0] rd_data , //自SDRAM中读出的数据
input wire [9:0] rd_burst_len , //读突发SDRAM字节数

output wire rd_ack , //读SDRAM响应信号
output wire rd_end , //一次突发读结束
output reg [3:0] read_cmd , //读数据阶段写入sdram的指令
output reg [1:0] read_ba , //读数据阶段Bank地址
output reg [12:0] read_addr , //地址数据,辅助预充电操作
output wire [15:0] rd_sdram_data //SDRAM读出的数据
);

////
//\* Parameter and Internal Signal \//
////

//parameter define
parameter TRCD_CLK = 10'd2 ,    //激活等待周期
          TCL_CLK = 10'd3 ,     //潜伏期
          TRP_CLK = 10'd2 ;     //预充电等待周期

parameter RD_IDLE = 4'b0000 ,   //空闲
          RD_ACTIVE = 4'b0001 , //激活
          RD_TRCD = 4'b0011 ,   //激活等待
          RD_READ = 4'b0010 ,   //读操作
          RD_CL = 4'b0100 ,     //潜伏期
          RD_DATA = 4'b0101 ,   //读数据
          RD_PRE = 4'b0111 ,    //预充电
          RD_TRP = 4'b0110 ,    //预充电等待
          RD_END = 4'b1100 ;    //一次突发读结束

parameter NOP = 4'b0111 ,       //空操作指令
          ACTIVE = 4'b0011 ,    //激活指令
          READ = 4'b0101 ,      //数据读指令
          B_STOP = 4'b0110 ,    //突发停止指令
          P_CHARGE = 4'b0010 ;  //预充电指令

//wire define
wire trcd_end ; //激活等待周期结束
wire trp_end ; //预充电等待周期结束
wire tcl_end ; //潜伏期结束标志
wire tread_end ; //突发读结束
wire rdburst_end ; //读突发终止

//reg define
reg [3:0] read_state ; //SDRAM写状态
reg [9:0] cnt_clk ; //时钟周期计数,记录初始化各状态等待时间
reg cnt_clk_rst ; //时钟周期计数复位标志
reg [15:0] rd_data_reg ;

////
/******************************* Main Code **************************************/
////

//rd_data_reg
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        rd_data_reg <= 16'd0;
    else
        rd_data_reg <= rd_data; // 只要sdram配置正确，会自动向外弹数据

//rd_sdram_data:SDRAM读出的数据
assign rd_sdram_data = (rd_ack == 1'b1) ? rd_data_reg : 16'b0;



//rd_end:一次突发读结束
assign rd_end = (read_state == RD_END) ? 1'b1 : 1'b0;

//rd_ack:读SDRAM响应信号
assign rd_ack = (read_state == RD_DATA) && (cnt_clk >= 10'd1) && (cnt_clk < (rd_burst_len + 2'd1));

//cnt_clk:时钟周期计数,记录初始化各状态等待时间
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        cnt_clk <= 10'd0;
    else if(cnt_clk_rst == 1'b1)
        cnt_clk <= 10'd0;
    else
        cnt_clk <= cnt_clk + 1'b1;

//trcd_end,trp_end,tcl_end,tread_end,rdburst_end:等待结束标志
assign trcd_end = ((read_state == RD_TRCD) && (cnt_clk == TRCD_CLK )) ? 1'b1 : 1'b0;//行选通周期结束
assign trp_end = ((read_state == RD_TRP ) && (cnt_clk == TRP_CLK )) ? 1'b1 : 1'b0;//预充电有效周期结束
assign tcl_end = ((read_state == RD_CL ) && (cnt_clk == TCL_CLK - 1 )) ? 1'b1 : 1'b0;//潜伏期结束
assign tread_end = ((read_state == RD_DATA) && (cnt_clk == rd_burst_len + 2)) ? 1'b1 : 1'b0;//突发读结束
assign rdburst_end = ((read_state == RD_DATA) && (cnt_clk == rd_burst_len - 4)) ? 1'b1 : 1'b0;//读突发终止，比突发读结束更早

//read_state:SDRAM的工作状态机
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        read_state <= RD_IDLE;
    else
        case(read_state)
            RD_IDLE:
                if((rd_en ==1'b1) && (init_end == 1'b1))
                    read_state <= RD_ACTIVE;
                else
                    read_state <= RD_IDLE;

            RD_ACTIVE:
                read_state <= RD_TRCD;

            RD_TRCD:
                if(trcd_end == 1'b1)
                    read_state <= RD_READ;
                else
                    read_state <= RD_TRCD;

            RD_READ:
                read_state <= RD_CL;

            RD_CL:
                read_state <= (tcl_end == 1'b1) ? RD_DATA : RD_CL;

            RD_DATA:
                read_state <= (tread_end == 1'b1) ? RD_PRE : RD_DATA;

            RD_PRE:
                read_state <= RD_TRP;

            RD_TRP:
                read_state <= (trp_end == 1'b1) ? RD_END : RD_TRP;

            RD_END:
                read_state <= RD_IDLE;

            default:
                read_state <= RD_IDLE;
        endcase

//计数器控制逻辑
always@(*)
    begin
        case(read_state)
            RD_IDLE: cnt_clk_rst <= 1'b1;
            RD_TRCD: cnt_clk_rst <= (trcd_end == 1'b1) ? 1'b1 : 1'b0;
            RD_READ: cnt_clk_rst <= 1'b1;
            RD_CL: cnt_clk_rst <= (tcl_end == 1'b1) ? 1'b1 : 1'b0;
            RD_DATA: cnt_clk_rst <= (tread_end == 1'b1) ? 1'b1 : 1'b0;
            RD_TRP: cnt_clk_rst <= (trp_end == 1'b1) ? 1'b1 : 1'b0;
            RD_END: cnt_clk_rst <= 1'b1;
            default: cnt_clk_rst <= 1'b0;
        endcase
    end

//SDRAM操作指令控制
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        begin
            read_cmd <= NOP;    // 多个引脚组合的命令
            read_ba <= 2'b11;   // 2位ba总线
            read_addr <= 13'h1fff;  // 13位地址总线
        end
    else
        case(read_state)
        RD_IDLE,RD_TRCD,RD_TRP:
            begin
                read_cmd <= NOP;    // 无操作指令，{CS_N,RAS_N,CAS_N,WE_N} = 4’b011
                read_ba <= 2'b11;   
                read_addr <= 13'h1fff;
            end

        RD_ACTIVE: //激活指令
            begin
                read_cmd <= ACTIVE;         // {CS_N,RAS_N,CAS_N,WE_N} = 4’b0011
                read_ba <= rd_addr[23:22];  // 被激活的 L-bank 地址 [23:22] 2个bit
                read_addr <= rd_addr[21:9]; // 起始行地址，信息被存在rd_addr的[21:9]位
                                            // 激活该行后，该行一直保持激活状态，并可以进行后续读/写操作，
                                            // 操作完成后，只有执行一次预充电命令(Precharge)后，被激活的特定行被关闭。
            end

        RD_READ: //读操作指令
            begin
                read_cmd <= READ;                   // {CS_N,RAS_N,CAS_N,WE_N} = 4’b0101
                read_ba <= rd_addr[23:22];          // 读取数据所在的L-Bank
                read_addr <= {4'b0000,rd_addr[8:0]};// 起始列地址，信息被存在rd_addr的[8:0]位
                
                                                    // 若A10为高电平，突发读操作完成后，立即执行自动预充电操作，关闭当前行
                                                    // 若A10为低电平，突发读操作完成后，当前行依然处于激活状态，以便对当前行执行新的读/写操作
            end

        RD_DATA: //突发传输终止指令
            begin
                if(rdburst_end == 1'b1)     // 直到突发停止计时结束
                    read_cmd <= B_STOP;     // 突发中值命令，执行的数据读操作被终止
                else
                    begin
                    read_cmd <= NOP;        // 输入READ命令行，再等待潜伏时间，数据就开始输出，此时不需要操作，只需要在这个状态等着
                    read_ba <= 2'b11;
                    read_addr <= 13'h1fff;
                    end
            end

        RD_PRE: //预充电指令
            begin
            read_cmd <= P_CHARGE;       // 控制指令均为{CS_N,RAS_N,CAS_N,WE_N} = 4’b0010
            read_ba <= rd_addr[23:22];
            read_addr <= 13'h0400;      // 对所有L-bank进行预充电
                                        // 通过一次预充电指令关闭激活行
                                        // 当A10 为高电平时，执行全部预充电命令
                                        // 当A10为低电平时，只对由BA[1:0]选定的L-Bank进行预充电
                                        // 执行预充电操作后，该L-Bank处于空闲状态，在下次读写操作之前必须重新激活。
            end

        RD_END:
            begin
            read_cmd <= NOP;
            read_ba <= 2'b11;
            read_addr <= 13'h1fff;
            end

        default:
            begin
            read_cmd <= NOP;
            read_ba <= 2'b11;
            read_addr <= 13'h1fff;
            end
        endcase



endmodule