library verilog;
use verilog.vl_types.all;
entity tb_ov5640_top is
    generic(
        H_VALID         : vl_logic_vector(0 to 9) := (Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        H_TOTAL         : vl_logic_vector(0 to 9) := (Hi1, Hi1, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0);
        V_SYNC          : vl_logic_vector(0 to 9) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0);
        V_BACK          : vl_logic_vector(0 to 9) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi1, Hi0);
        V_VALID         : vl_logic_vector(0 to 9) := (Hi0, Hi1, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0);
        V_FRONT         : vl_logic_vector(0 to 9) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0);
        V_TOTAL         : vl_logic_vector(0 to 9) := (Hi0, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of H_VALID : constant is 1;
    attribute mti_svvh_generic_type of H_TOTAL : constant is 1;
    attribute mti_svvh_generic_type of V_SYNC : constant is 1;
    attribute mti_svvh_generic_type of V_BACK : constant is 1;
    attribute mti_svvh_generic_type of V_VALID : constant is 1;
    attribute mti_svvh_generic_type of V_FRONT : constant is 1;
    attribute mti_svvh_generic_type of V_TOTAL : constant is 1;
end tb_ov5640_top;
