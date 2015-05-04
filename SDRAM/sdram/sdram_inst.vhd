	component sdram is
		port (
			clk_clk             : in    std_logic                     := 'X';             -- clk
			reset_reset_n       : in    std_logic                     := 'X';             -- reset_n
			clk143_shift_clk    : out   std_logic;                                        -- clk
			clk143_clk          : out   std_logic;                                        -- clk
			clk49_5_clk         : out   std_logic;                                        -- clk
			wire_addr           : out   std_logic_vector(12 downto 0);                    -- addr
			wire_ba             : out   std_logic_vector(1 downto 0);                     -- ba
			wire_cas_n          : out   std_logic;                                        -- cas_n
			wire_cke            : out   std_logic;                                        -- cke
			wire_cs_n           : out   std_logic;                                        -- cs_n
			wire_dq             : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			wire_dqm            : out   std_logic_vector(1 downto 0);                     -- dqm
			wire_ras_n          : out   std_logic;                                        -- ras_n
			wire_we_n           : out   std_logic;                                        -- we_n
			sdram_address       : in    std_logic_vector(24 downto 0) := (others => 'X'); -- address
			sdram_byteenable_n  : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- byteenable_n
			sdram_chipselect    : in    std_logic                     := 'X';             -- chipselect
			sdram_writedata     : in    std_logic_vector(15 downto 0) := (others => 'X'); -- writedata
			sdram_read_n        : in    std_logic                     := 'X';             -- read_n
			sdram_write_n       : in    std_logic                     := 'X';             -- write_n
			sdram_readdata      : out   std_logic_vector(15 downto 0);                    -- readdata
			sdram_readdatavalid : out   std_logic;                                        -- readdatavalid
			sdram_waitrequest   : out   std_logic                                         -- waitrequest
		);
	end component sdram;

	u0 : component sdram
		port map (
			clk_clk             => CONNECTED_TO_clk_clk,             --          clk.clk
			reset_reset_n       => CONNECTED_TO_reset_reset_n,       --        reset.reset_n
			clk143_shift_clk    => CONNECTED_TO_clk143_shift_clk,    -- clk143_shift.clk
			clk143_clk          => CONNECTED_TO_clk143_clk,          --       clk143.clk
			clk49_5_clk         => CONNECTED_TO_clk49_5_clk,         --      clk49_5.clk
			wire_addr           => CONNECTED_TO_wire_addr,           --         wire.addr
			wire_ba             => CONNECTED_TO_wire_ba,             --             .ba
			wire_cas_n          => CONNECTED_TO_wire_cas_n,          --             .cas_n
			wire_cke            => CONNECTED_TO_wire_cke,            --             .cke
			wire_cs_n           => CONNECTED_TO_wire_cs_n,           --             .cs_n
			wire_dq             => CONNECTED_TO_wire_dq,             --             .dq
			wire_dqm            => CONNECTED_TO_wire_dqm,            --             .dqm
			wire_ras_n          => CONNECTED_TO_wire_ras_n,          --             .ras_n
			wire_we_n           => CONNECTED_TO_wire_we_n,           --             .we_n
			sdram_address       => CONNECTED_TO_sdram_address,       --        sdram.address
			sdram_byteenable_n  => CONNECTED_TO_sdram_byteenable_n,  --             .byteenable_n
			sdram_chipselect    => CONNECTED_TO_sdram_chipselect,    --             .chipselect
			sdram_writedata     => CONNECTED_TO_sdram_writedata,     --             .writedata
			sdram_read_n        => CONNECTED_TO_sdram_read_n,        --             .read_n
			sdram_write_n       => CONNECTED_TO_sdram_write_n,       --             .write_n
			sdram_readdata      => CONNECTED_TO_sdram_readdata,      --             .readdata
			sdram_readdatavalid => CONNECTED_TO_sdram_readdatavalid, --             .readdatavalid
			sdram_waitrequest   => CONNECTED_TO_sdram_waitrequest    --             .waitrequest
		);

