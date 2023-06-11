library verilog;
use verilog.vl_types.all;
entity MultipleADC is
    port(
        e_reset         : out    vl_logic;
        reset_n         : in     vl_logic;
        fpga_gclk       : in     vl_logic;
        e_rxc           : in     vl_logic;
        e_rxdv          : in     vl_logic;
        e_rxer          : in     vl_logic;
        e_txc           : in     vl_logic;
        e_mdio          : inout  vl_logic;
        e_rxd           : in     vl_logic_vector(7 downto 0);
        e_mdc           : out    vl_logic;
        e_txen          : out    vl_logic;
        e_txer          : out    vl_logic;
        e_gtxc          : out    vl_logic;
        sendtrigger     : out    vl_logic;
        e_txd           : out    vl_logic_vector(7 downto 0)
    );
end MultipleADC;
