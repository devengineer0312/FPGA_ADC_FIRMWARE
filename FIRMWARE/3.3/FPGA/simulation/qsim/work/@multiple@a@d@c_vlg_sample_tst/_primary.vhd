library verilog;
use verilog.vl_types.all;
entity MultipleADC_vlg_sample_tst is
    port(
        e_mdio          : in     vl_logic;
        e_rxc           : in     vl_logic;
        e_rxd           : in     vl_logic_vector(7 downto 0);
        e_rxdv          : in     vl_logic;
        e_rxer          : in     vl_logic;
        e_txc           : in     vl_logic;
        fpga_gclk       : in     vl_logic;
        reset_n         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MultipleADC_vlg_sample_tst;
