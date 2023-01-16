------------------------------------------------------------------------------
--  Output     Output      Phase    Duty Cycle   Pk-to-Pk     Phase
--   Clock     Freq (MHz)  (degrees)    (%)     Jitter (ps)  Error (ps)
------------------------------------------------------------------------------
-- CLK_OUT1___108.000______0.000______50.0______127.691_____97.646
--
------------------------------------------------------------------------------
-- Input Clock   Freq (MHz)    Input Jitter (UI)
------------------------------------------------------------------------------
-- __primary_________100.000____________0.010

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

entity clk_mul is
    port(clk_in1 : in std_logic;
         clk_out1 : out std_logic);
end clk_mul;

architecture ARH of clk_mul is
  -- Input clock buffering / unused connectors
  signal clk_in1_clk_wiz_0      : std_logic;
  -- Output clock buffering / unused connectors
  signal clkfbout_clk_wiz_0         : std_logic;
  signal clkfbout_buf_clk_wiz_0     : std_logic;
  signal clkfboutb_unused : std_logic;
  signal clk_out1_clk_wiz_0          : std_logic;
  signal clkout0b_unused         : std_logic;
  signal clkout1_unused   : std_logic;
  signal clkout1b_unused         : std_logic;
  signal clkout2_unused   : std_logic;
  signal clkout2b_unused         : std_logic;
  signal clkout3_unused   : std_logic;
  signal clkout3b_unused  : std_logic;
  signal clkout4_unused   : std_logic;
  signal clkout5_unused   : std_logic;
  signal clkout6_unused   : std_logic;
  -- Dynamic programming unused signals
  signal do_unused        : std_logic_vector(15 downto 0);
  signal drdy_unused      : std_logic;
  -- Dynamic phase shift unused signals
  signal psdone_unused    : std_logic;
  signal locked_int : std_logic;
  -- Unused status signals
  signal clkfbstopped_unused : std_logic;
  signal clkinstopped_unused : std_logic;

begin


  -- Input buffering
  --------------------------------------
clk_in1_clk_wiz_0 <= clk_in1;



  -- Clocking PRIMITIVE
  --------------------------------------
  -- Instantiation of the MMCM PRIMITIVE
  --    * Unused inputs are tied off
  --    * Unused outputs are labeled unused
  mmcm_adv_inst : MMCME2_ADV
  generic map
   (BANDWIDTH            => "OPTIMIZED",
    CLKOUT4_CASCADE      => FALSE,
    COMPENSATION         => "ZHOLD",
    STARTUP_WAIT         => FALSE,
    DIVCLK_DIVIDE        => 1,
    CLKFBOUT_MULT_F      => 10.125,
    CLKFBOUT_PHASE       => 0.000,
    CLKFBOUT_USE_FINE_PS => FALSE,
    CLKOUT0_DIVIDE_F     => 9.375,
    CLKOUT0_PHASE        => 0.000,
    CLKOUT0_DUTY_CYCLE   => 0.500,
    CLKOUT0_USE_FINE_PS  => FALSE,
    CLKIN1_PERIOD        => 10.0,
    REF_JITTER1          => 0.010)
  port map
    -- Output clocks
   (
    CLKFBOUT            => clkfbout_clk_wiz_0,
    CLKFBOUTB           => clkfboutb_unused,
    CLKOUT0             => clk_out1_clk_wiz_0,
    CLKOUT0B            => clkout0b_unused,
    CLKOUT1             => clkout1_unused,
    CLKOUT1B            => clkout1b_unused,
    CLKOUT2             => clkout2_unused,
    CLKOUT2B            => clkout2b_unused,
    CLKOUT3             => clkout3_unused,
    CLKOUT3B            => clkout3b_unused,
    CLKOUT4             => clkout4_unused,
    CLKOUT5             => clkout5_unused,
    CLKOUT6             => clkout6_unused,
    -- Input clock control
    CLKFBIN             => clkfbout_buf_clk_wiz_0,
    CLKIN1              => clk_in1_clk_wiz_0,
    CLKIN2              => '0',
    -- Tied to always select the primary input clock
    CLKINSEL            => '1',
    -- Ports for dynamic reconfiguration
    DADDR               => (others => '0'),
    DCLK                => '0',
    DEN                 => '0',
    DI                  => (others => '0'),
    DO                  => do_unused,
    DRDY                => drdy_unused,
    DWE                 => '0',
    -- Ports for dynamic phase shift
    PSCLK               => '0',
    PSEN                => '0',
    PSINCDEC            => '0',
    PSDONE              => psdone_unused,
    -- Other control and status signals
    LOCKED              => locked_int,
    CLKINSTOPPED        => clkinstopped_unused,
    CLKFBSTOPPED        => clkfbstopped_unused,
    PWRDWN              => '0',
    RST                 => '0');


  -- Output buffering
  -------------------------------------

  clkf_buf : BUFG
  port map
   (O => clkfbout_buf_clk_wiz_0,
    I => clkfbout_clk_wiz_0);



  clkout1_buf : BUFG
  port map
   (O   => clk_out1,
    I   => clk_out1_clk_wiz_0);



end ARH;
