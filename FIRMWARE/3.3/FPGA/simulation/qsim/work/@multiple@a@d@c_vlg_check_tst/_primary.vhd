library verilog;
use verilog.vl_types.all;
entity MultipleADC_vlg_check_tst is
    port(
        e_gtxc          : in     vl_logic;
        e_mdc           : in     vl_logic;
        e_mdio          : in     vl_logic;
        e_reset         : in     vl_logic;
        e_txd           : in     vl_logic_vector(7 downto 0);
        e_txen          : in     vl_logic;
        e_txer          : in     vl_logic;
        sendtrigger     : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end MultipleADC_vlg_check_tst;
