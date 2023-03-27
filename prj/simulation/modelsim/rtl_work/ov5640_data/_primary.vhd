library verilog;
use verilog.vl_types.all;
entity ov5640_data is
    generic(
        PIC_WAIT        : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi1, Hi0)
    );
    port(
        sys_rst_n       : in     vl_logic;
        ov5640_pclk     : in     vl_logic;
        ov5640_href     : in     vl_logic;
        ov5640_vsync    : in     vl_logic;
        ov5640_data     : in     vl_logic_vector(7 downto 0);
        ov5640_wr_en    : out    vl_logic;
        ov5640_data_out : out    vl_logic_vector(15 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of PIC_WAIT : constant is 1;
end ov5640_data;
