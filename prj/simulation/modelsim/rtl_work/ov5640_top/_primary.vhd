library verilog;
use verilog.vl_types.all;
entity ov5640_top is
    generic(
        SLAVE_ADDR      : vl_logic_vector(0 to 6) := (Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi1);
        BIT_CTRL        : vl_logic := Hi0;
        CLK_FREQ        : vl_logic_vector(0 to 25) := (Hi1, Hi0, Hi1, Hi1, Hi1, Hi1, Hi1, Hi0, Hi1, Hi0, Hi1, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        I2C_FREQ        : vl_logic_vector(0 to 17) := (Hi1, Hi1, Hi1, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0)
    );
    port(
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        sys_init_done   : in     vl_logic;
        ov5640_pclk     : in     vl_logic;
        ov5640_href     : in     vl_logic;
        ov5640_vsync    : in     vl_logic;
        ov5640_data     : in     vl_logic_vector(7 downto 0);
        cfg_done        : out    vl_logic;
        sccb_scl        : out    vl_logic;
        sccb_sda        : out    vl_logic;
        ov5640_wr_en    : out    vl_logic;
        ov5640_data_out : out    vl_logic_vector(15 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of SLAVE_ADDR : constant is 1;
    attribute mti_svvh_generic_type of BIT_CTRL : constant is 1;
    attribute mti_svvh_generic_type of CLK_FREQ : constant is 1;
    attribute mti_svvh_generic_type of I2C_FREQ : constant is 1;
end ov5640_top;
