library verilog;
use verilog.vl_types.all;
entity i2c_ctrl is
    generic(
        DEVICE_ADDR     : vl_logic_vector(0 to 6) := (Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0);
        SYS_CLK_FREQ    : vl_logic_vector(0 to 25) := (Hi1, Hi0, Hi1, Hi1, Hi1, Hi1, Hi1, Hi0, Hi1, Hi0, Hi1, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        SCL_FREQ        : vl_logic_vector(0 to 17) := (Hi1, Hi1, Hi1, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0)
    );
    port(
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        wr_en           : in     vl_logic;
        rd_en           : in     vl_logic;
        i2c_start       : in     vl_logic;
        addr_num        : in     vl_logic;
        byte_addr       : in     vl_logic_vector(15 downto 0);
        wr_data         : in     vl_logic_vector(7 downto 0);
        i2c_clk         : out    vl_logic;
        i2c_end         : out    vl_logic;
        rd_data         : out    vl_logic_vector(7 downto 0);
        i2c_scl         : out    vl_logic;
        i2c_sda         : inout  vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DEVICE_ADDR : constant is 1;
    attribute mti_svvh_generic_type of SYS_CLK_FREQ : constant is 1;
    attribute mti_svvh_generic_type of SCL_FREQ : constant is 1;
end i2c_ctrl;
