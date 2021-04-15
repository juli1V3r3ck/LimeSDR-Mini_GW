-- ddrox1.vhd

-- Generated using ACDS version 18.1 625

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ddrox1 is
	port (
		outclock : in  std_logic                    := '0';             -- outclock.export
		din      : in  std_logic_vector(1 downto 0) := (others => '0'); --      din.export
		pad_out  : out std_logic_vector(0 downto 0)                     --  pad_out.export
	);
end entity ddrox1;

architecture rtl of ddrox1 is
	component altera_gpio_lite is
		generic (
			PIN_TYPE                                 : string  := "output";
			SIZE                                     : integer := 4;
			REGISTER_MODE                            : string  := "bypass";
			BUFFER_TYPE                              : string  := "single-ended";
			ASYNC_MODE                               : string  := "none";
			SYNC_MODE                                : string  := "none";
			BUS_HOLD                                 : string  := "false";
			OPEN_DRAIN_OUTPUT                        : string  := "false";
			ENABLE_OE_PORT                           : string  := "false";
			ENABLE_NSLEEP_PORT                       : string  := "false";
			ENABLE_CLOCK_ENA_PORT                    : string  := "false";
			SET_REGISTER_OUTPUTS_HIGH                : string  := "false";
			INVERT_OUTPUT                            : string  := "false";
			INVERT_INPUT_CLOCK                       : string  := "false";
			USE_ONE_REG_TO_DRIVE_OE                  : string  := "false";
			USE_DDIO_REG_TO_DRIVE_OE                 : string  := "false";
			USE_ADVANCED_DDR_FEATURES                : string  := "false";
			USE_ADVANCED_DDR_FEATURES_FOR_INPUT_ONLY : string  := "false";
			ENABLE_OE_HALF_CYCLE_DELAY               : string  := "true";
			INVERT_CLKDIV_INPUT_CLOCK                : string  := "false";
			ENABLE_PHASE_INVERT_CTRL_PORT            : string  := "false";
			ENABLE_HR_CLOCK                          : string  := "false";
			INVERT_OUTPUT_CLOCK                      : string  := "false";
			INVERT_OE_INCLOCK                        : string  := "false";
			ENABLE_PHASE_DETECTOR_FOR_CK             : string  := "false"
		);
		port (
			outclock        : in    std_logic                    := 'X';             -- export
			din             : in    std_logic_vector(1 downto 0) := (others => 'X'); -- export
			pad_out         : out   std_logic_vector(0 downto 0);                    -- export
			outclocken      : in    std_logic                    := 'X';             -- export
			inclock         : in    std_logic                    := 'X';             -- export
			inclocken       : in    std_logic                    := 'X';             -- export
			fr_clock        : out   std_logic_vector(0 downto 0);                    -- export
			hr_clock        : out   std_logic;                                       -- export
			invert_hr_clock : in    std_logic                    := 'X';             -- export
			phy_mem_clock   : in    std_logic                    := 'X';             -- export
			mimic_clock     : out   std_logic_vector(0 downto 0);                    -- export
			dout            : out   std_logic_vector(1 downto 0);                    -- export
			pad_io          : inout std_logic_vector(0 downto 0) := (others => 'X'); -- export
			pad_io_b        : inout std_logic_vector(0 downto 0) := (others => 'X'); -- export
			pad_in          : in    std_logic_vector(0 downto 0) := (others => 'X'); -- export
			pad_in_b        : in    std_logic_vector(0 downto 0) := (others => 'X'); -- export
			pad_out_b       : out   std_logic_vector(0 downto 0);                    -- export
			aset            : in    std_logic                    := 'X';             -- export
			aclr            : in    std_logic                    := 'X';             -- export
			sclr            : in    std_logic                    := 'X';             -- export
			nsleep          : in    std_logic_vector(0 downto 0) := (others => 'X'); -- export
			oe              : in    std_logic_vector(0 downto 0) := (others => 'X')  -- export
		);
	end component altera_gpio_lite;

begin

	ddrox1_inst : component altera_gpio_lite
		generic map (
			PIN_TYPE                                 => "output",
			SIZE                                     => 1,
			REGISTER_MODE                            => "ddr",
			BUFFER_TYPE                              => "single-ended",
			ASYNC_MODE                               => "none",
			SYNC_MODE                                => "none",
			BUS_HOLD                                 => "false",
			OPEN_DRAIN_OUTPUT                        => "false",
			ENABLE_OE_PORT                           => "false",
			ENABLE_NSLEEP_PORT                       => "false",
			ENABLE_CLOCK_ENA_PORT                    => "false",
			SET_REGISTER_OUTPUTS_HIGH                => "false",
			INVERT_OUTPUT                            => "false",
			INVERT_INPUT_CLOCK                       => "false",
			USE_ONE_REG_TO_DRIVE_OE                  => "false",
			USE_DDIO_REG_TO_DRIVE_OE                 => "false",
			USE_ADVANCED_DDR_FEATURES                => "false",
			USE_ADVANCED_DDR_FEATURES_FOR_INPUT_ONLY => "false",
			ENABLE_OE_HALF_CYCLE_DELAY               => "true",
			INVERT_CLKDIV_INPUT_CLOCK                => "false",
			ENABLE_PHASE_INVERT_CTRL_PORT            => "false",
			ENABLE_HR_CLOCK                          => "false",
			INVERT_OUTPUT_CLOCK                      => "false",
			INVERT_OE_INCLOCK                        => "false",
			ENABLE_PHASE_DETECTOR_FOR_CK             => "false"
		)
		port map (
			outclock        => outclock, -- outclock.export
			din             => din,      --      din.export
			pad_out         => pad_out,  --  pad_out.export
			outclocken      => '1',      -- (terminated)
			inclock         => '0',      -- (terminated)
			inclocken       => '0',      -- (terminated)
			fr_clock        => open,     -- (terminated)
			hr_clock        => open,     -- (terminated)
			invert_hr_clock => '0',      -- (terminated)
			phy_mem_clock   => '0',      -- (terminated)
			mimic_clock     => open,     -- (terminated)
			dout            => open,     -- (terminated)
			pad_io          => open,     -- (terminated)
			pad_io_b        => open,     -- (terminated)
			pad_in          => "0",      -- (terminated)
			pad_in_b        => "0",      -- (terminated)
			pad_out_b       => open,     -- (terminated)
			aset            => '0',      -- (terminated)
			aclr            => '0',      -- (terminated)
			sclr            => '0',      -- (terminated)
			nsleep          => "0",      -- (terminated)
			oe              => "0"       -- (terminated)
		);

end architecture rtl; -- of ddrox1
