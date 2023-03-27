module ov5640_data
(
input wire sys_rst_n , //复位信号
// OV5640
input wire ov5640_pclk , //摄像头像素时钟（自建时钟）
input wire ov5640_href , //摄像头行同步信号（来自摄像头）
input wire ov5640_vsync , //摄像头场同步信号（来自摄像头）
input wire [ 7:0] ov5640_data , //摄像头图像数据（来自摄像头）
// 写FIFO
output wire ov5640_wr_en , //图像数据有效使能信号
output wire [15:0] ov5640_data_out //图像数据，一个像素的颜色
);

////
//\* Parameter and Internal Signal \//
////

//parameter define
parameter PIC_WAIT = 4'd10; //图像稳定前等待帧图像个数

//wire define
wire pic_flag ; //帧图像标志信号,每拉高一次,代表一帧完整图像

//reg define
reg ov5640_vsync_dly ; //摄像头输入场同步信号打拍
reg [3:0] cnt_pic ; //图像帧计数器
reg pic_valid ; //帧有效标志信号
reg [7:0] pic_data_reg ; //输入8位图像数据缓存
reg [15:0] data_out_reg ; //输出16位图像数据缓存
reg data_flag ; //输入8位图像数据缓存
reg data_flag_dly1 ; //图像数据拼接标志信号打拍


//\*  Code \//

// 生成滞后的场同步信号
always@(posedge ov5640_pclk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        ov5640_vsync_dly <= 1'b0;
    else
        ov5640_vsync_dly <= ov5640_vsync; // 落后场同步信号一个时钟的同步信号

//pic_flag：记录场同步信号拉高的信息
assign pic_flag = ((ov5640_vsync_dly == 1'b0) && (ov5640_vsync == 1'b1)) ? 1'b1 : 1'b0; // 夹在两个同步信号之间

// main code
always@(posedge ov5640_pclk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)   // 检测到重置信号
        begin
            data_out_reg <= 16'd0;
            pic_data_reg <= 8'd0;
            data_flag <= 1'b0;
        end
    else if(ov5640_href == 1'b1)    //行同步信号有效
        begin
            data_flag <= ~data_flag;    // data_flag取反，一次缓存一次拼接不断循环
            pic_data_reg <= ov5640_data;    // 高8位缓存
            data_out_reg <= data_out_reg;
            if(data_flag == 1'b0)   // 高电平时拼接
                data_out_reg <= {pic_data_reg,ov5640_data}; // 先传高8位，再传低8位
            else
            // data_flag <= ~data_flag;    // data_flag取反，一次缓存一次拼接不断循环
            data_out_reg <= data_out_reg;
        end
    else    // 输入信号无效
        begin
            data_flag <= 1'b0;
            pic_data_reg <= 8'd0;
            data_out_reg <= data_out_reg;
        end

//ov5640_data_out:输出16位图像数据
assign ov5640_data_out = (pic_valid == 1'b1) ? data_out_reg : 16'b0; // 输出的数据有可能只有一半

//ov5640_wr_en:输出16位图像数据使能
assign ov5640_wr_en = (pic_valid == 1'b1) ? data_flag_dly1 : 1'b0; // 等数据拼接完成，写使能触发，才能输出

//data_flag_dly1：拼接完成标志
always@(posedge ov5640_pclk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        data_flag_dly1 <= 1'b0;
    else
        data_flag_dly1 <= data_flag;    // 追踪高低位是否拼接完成，如果为1，拼接完成

// 等待PIC_WAIT个上升沿时间（只有用一次）
always@(posedge ov5640_pclk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        cnt_pic <= 4'd0;
    else if(cnt_pic < PIC_WAIT)
        cnt_pic <= cnt_pic + 1'b1;  // 等待足够长的时间，使摄像头开机后稳定下来
    else
        cnt_pic <= cnt_pic;

//保证等待PIC_WAIT个上升沿时间才输出像素信息
always@(posedge ov5640_pclk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        pic_valid <= 1'b0;
    else if((cnt_pic == PIC_WAIT) && (pic_flag == 1'b1))    // 等待，舍弃前几帧数据，之后才正常传输
        pic_valid <= 1'b1;  // 等待PIC_WAIT个上升沿后，pic_valid始终拉高
    else
        pic_valid <= pic_valid;



endmodule