
module RAMSYS (
	clk_clk,
	reset_reset_n,
	clk143_shift_clk,
	clk143_clk,
	clk49_5_clk,
	wire_addr,
	wire_ba,
	wire_cas_n,
	wire_cke,
	wire_cs_n,
	wire_dq,
	wire_dqm,
	wire_ras_n,
	wire_we_n,
	sdram_address,
	sdram_byteenable_n,
	sdram_chipselect,
	sdram_writedata,
	sdram_read_n,
	sdram_write_n,
	sdram_readdata,
	sdram_readdatavalid,
	sdram_waitrequest);	

	input		clk_clk;
	input		reset_reset_n;
	output		clk143_shift_clk;
	output		clk143_clk;
	output		clk49_5_clk;
	output	[12:0]	wire_addr;
	output	[1:0]	wire_ba;
	output		wire_cas_n;
	output		wire_cke;
	output		wire_cs_n;
	inout	[15:0]	wire_dq;
	output	[1:0]	wire_dqm;
	output		wire_ras_n;
	output		wire_we_n;
	input	[24:0]	sdram_address;
	input	[1:0]	sdram_byteenable_n;
	input		sdram_chipselect;
	input	[15:0]	sdram_writedata;
	input		sdram_read_n;
	input		sdram_write_n;
	output	[15:0]	sdram_readdata;
	output		sdram_readdatavalid;
	output		sdram_waitrequest;
endmodule
