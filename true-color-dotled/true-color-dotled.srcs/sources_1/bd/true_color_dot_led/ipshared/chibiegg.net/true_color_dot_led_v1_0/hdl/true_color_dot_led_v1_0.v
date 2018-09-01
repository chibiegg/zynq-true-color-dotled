
`timescale 1 ns / 1 ps

	module true_color_dot_led_v1_0 #
	(
		// Users to add parameters here
        parameter integer C_BRAM_ADDR_WIDTH  = 11,
        parameter integer C_DEFAULT_WIDTH = 32,
        parameter integer C_DEFAULT_HEIGHT = 16,
        parameter integer C_DEFAULT_PRESCALE = 6,
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S_AXI_Control
		parameter integer C_S_AXI_Control_DATA_WIDTH	= 32,
		parameter integer C_S_AXI_Control_ADDR_WIDTH	= 4,

		// Parameters of Axi Slave Bus Interface S_AXI_Data
		parameter integer C_S_AXI_Data_DATA_WIDTH	= 32,
		parameter integer C_S_AXI_Data_ADDR_WIDTH	= 30
	)
	(
		// Users to add ports here
        
        // BRAM_OUT
        output bram_out_en,
        input [23:0] bram_out_dout,
        output [23:0] bram_out_din,
        output bram_out_we,
        output [C_BRAM_ADDR_WIDTH-1:0] bram_out_addr,
        output bram_out_clk,
        output bram_out_rst,
        
        // BRAM_IN
        output bram_in_en,
        input [23:0] bram_in_dout,
        output [23:0] bram_in_din,
        output bram_in_we,
        output [C_BRAM_ADDR_WIDTH-1:0] bram_in_addr,
        output bram_in_clk,
        output bram_in_rst,

        // LED
        output led_clk,
        output led_lat,
        output led_oe,
        output [3:0] led_addr,
        output [1:0] led_r,
        output [1:0] led_g,
        output [1:0] led_b,

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S_AXI_Control
		input wire  s_axi_control_aclk,
		input wire  s_axi_control_aresetn,
		input wire [C_S_AXI_Control_ADDR_WIDTH-1 : 0] s_axi_control_awaddr,
		input wire [2 : 0] s_axi_control_awprot,
		input wire  s_axi_control_awvalid,
		output wire  s_axi_control_awready,
		input wire [C_S_AXI_Control_DATA_WIDTH-1 : 0] s_axi_control_wdata,
		input wire [(C_S_AXI_Control_DATA_WIDTH/8)-1 : 0] s_axi_control_wstrb,
		input wire  s_axi_control_wvalid,
		output wire  s_axi_control_wready,
		output wire [1 : 0] s_axi_control_bresp,
		output wire  s_axi_control_bvalid,
		input wire  s_axi_control_bready,
		input wire [C_S_AXI_Control_ADDR_WIDTH-1 : 0] s_axi_control_araddr,
		input wire [2 : 0] s_axi_control_arprot,
		input wire  s_axi_control_arvalid,
		output wire  s_axi_control_arready,
		output wire [C_S_AXI_Control_DATA_WIDTH-1 : 0] s_axi_control_rdata,
		output wire [1 : 0] s_axi_control_rresp,
		output wire  s_axi_control_rvalid,
		input wire  s_axi_control_rready,

		// Ports of Axi Slave Bus Interface S_AXI_Data
		input wire  s_axi_data_aclk,
		input wire  s_axi_data_aresetn,
		input wire [C_S_AXI_Data_ADDR_WIDTH-1 : 0] s_axi_data_awaddr,
		input wire [2 : 0] s_axi_data_awprot,
		input wire  s_axi_data_awvalid,
		output wire  s_axi_data_awready,
		input wire [C_S_AXI_Data_DATA_WIDTH-1 : 0] s_axi_data_wdata,
		input wire [(C_S_AXI_Data_DATA_WIDTH/8)-1 : 0] s_axi_data_wstrb,
		input wire  s_axi_data_wvalid,
		output wire  s_axi_data_wready,
		output wire [1 : 0] s_axi_data_bresp,
		output wire  s_axi_data_bvalid,
		input wire  s_axi_data_bready,
		input wire [C_S_AXI_Data_ADDR_WIDTH-1 : 0] s_axi_data_araddr,
		input wire [2 : 0] s_axi_data_arprot,
		input wire  s_axi_data_arvalid,
		output wire  s_axi_data_arready,
		output wire [C_S_AXI_Data_DATA_WIDTH-1 : 0] s_axi_data_rdata,
		output wire [1 : 0] s_axi_data_rresp,
		output wire  s_axi_data_rvalid,
		input wire  s_axi_data_rready
	);
// Instantiation of Axi Bus Interface S_AXI_Control
	true_color_dot_led_v1_0_S_AXI_Control # ( 
	    .BRAM_ADDR_WIDTH(C_BRAM_ADDR_WIDTH),
	    .DEFAULT_WIDTH(C_DEFAULT_WIDTH),
	    .DEFAULT_HEIGHT(C_DEFAULT_HEIGHT),
	    .DEFAULT_PRESCALE(C_DEFAULT_PRESCALE),
		.C_S_AXI_DATA_WIDTH(C_S_AXI_Control_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S_AXI_Control_ADDR_WIDTH)
	) true_color_dot_led_v1_0_S_AXI_Control_inst (
        .bram_out_en(bram_out_en),
        .bram_out_dout(bram_out_dout),
        .bram_out_din(bram_out_din),
        .bram_out_we(bram_out_we),
        .bram_out_addr(bram_out_addr),
        .bram_out_clk(bram_out_clk),
        .bram_out_rst(bram_out_rst),
        .led_clk(led_clk),
        .led_lat(led_lat),
        .led_oe(led_oe),
        .led_addr(led_addr),
        .led_r(led_r),
        .led_g(led_g),
        .led_b(led_b),
		.S_AXI_ACLK(s_axi_control_aclk),
		.S_AXI_ARESETN(s_axi_control_aresetn),
		.S_AXI_AWADDR(s_axi_control_awaddr),
		.S_AXI_AWPROT(s_axi_control_awprot),
		.S_AXI_AWVALID(s_axi_control_awvalid),
		.S_AXI_AWREADY(s_axi_control_awready),
		.S_AXI_WDATA(s_axi_control_wdata),
		.S_AXI_WSTRB(s_axi_control_wstrb),
		.S_AXI_WVALID(s_axi_control_wvalid),
		.S_AXI_WREADY(s_axi_control_wready),
		.S_AXI_BRESP(s_axi_control_bresp),
		.S_AXI_BVALID(s_axi_control_bvalid),
		.S_AXI_BREADY(s_axi_control_bready),
		.S_AXI_ARADDR(s_axi_control_araddr),
		.S_AXI_ARPROT(s_axi_control_arprot),
		.S_AXI_ARVALID(s_axi_control_arvalid),
		.S_AXI_ARREADY(s_axi_control_arready),
		.S_AXI_RDATA(s_axi_control_rdata),
		.S_AXI_RRESP(s_axi_control_rresp),
		.S_AXI_RVALID(s_axi_control_rvalid),
		.S_AXI_RREADY(s_axi_control_rready)
	);

// Instantiation of Axi Bus Interface S_AXI_Data
	true_color_dot_led_v1_0_S_AXI_Data # ( 
        .BRAM_ADDR_WIDTH(C_BRAM_ADDR_WIDTH),
		.C_S_AXI_DATA_WIDTH(C_S_AXI_Data_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S_AXI_Data_ADDR_WIDTH)
	) true_color_dot_led_v1_0_S_AXI_Data_inst (
        .bram_in_en(bram_in_en),
        .bram_in_dout(bram_in_dout),
        .bram_in_din(bram_in_din),
        .bram_in_we(bram_in_we),
        .bram_in_addr(bram_in_addr),
        .bram_in_clk(bram_in_clk),
        .bram_in_rst(bram_in_rst),
		.S_AXI_ACLK(s_axi_data_aclk),
		.S_AXI_ARESETN(s_axi_data_aresetn),
		.S_AXI_AWADDR(s_axi_data_awaddr),
		.S_AXI_AWPROT(s_axi_data_awprot),
		.S_AXI_AWVALID(s_axi_data_awvalid),
		.S_AXI_AWREADY(s_axi_data_awready),
		.S_AXI_WDATA(s_axi_data_wdata),
		.S_AXI_WSTRB(s_axi_data_wstrb),
		.S_AXI_WVALID(s_axi_data_wvalid),
		.S_AXI_WREADY(s_axi_data_wready),
		.S_AXI_BRESP(s_axi_data_bresp),
		.S_AXI_BVALID(s_axi_data_bvalid),
		.S_AXI_BREADY(s_axi_data_bready),
		.S_AXI_ARADDR(s_axi_data_araddr),
		.S_AXI_ARPROT(s_axi_data_arprot),
		.S_AXI_ARVALID(s_axi_data_arvalid),
		.S_AXI_ARREADY(s_axi_data_arready),
		.S_AXI_RDATA(s_axi_data_rdata),
		.S_AXI_RRESP(s_axi_data_rresp),
		.S_AXI_RVALID(s_axi_data_rvalid),
		.S_AXI_RREADY(s_axi_data_rready)
	);

	// Add user logic here

	// User logic ends

	endmodule
