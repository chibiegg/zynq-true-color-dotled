// (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: chibiegg.net:chibiegg:true_color_dot_led:1.0
// IP Revision: 10

(* X_CORE_INFO = "true_color_dot_led_v1_0,Vivado 2016.1" *)
(* CHECK_LICENSE_TYPE = "true_color_dot_led_true_color_dot_led_0_0,true_color_dot_led_v1_0,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module true_color_dot_led_true_color_dot_led_0_0 (
  bram_out_en,
  bram_out_dout,
  bram_out_din,
  bram_out_we,
  bram_out_addr,
  bram_out_clk,
  bram_out_rst,
  bram_in_en,
  bram_in_dout,
  bram_in_din,
  bram_in_we,
  bram_in_addr,
  bram_in_clk,
  bram_in_rst,
  led_clk,
  led_lat,
  led_oe,
  led_addr,
  led_r,
  led_g,
  led_b,
  s_axi_control_awaddr,
  s_axi_control_awprot,
  s_axi_control_awvalid,
  s_axi_control_awready,
  s_axi_control_wdata,
  s_axi_control_wstrb,
  s_axi_control_wvalid,
  s_axi_control_wready,
  s_axi_control_bresp,
  s_axi_control_bvalid,
  s_axi_control_bready,
  s_axi_control_araddr,
  s_axi_control_arprot,
  s_axi_control_arvalid,
  s_axi_control_arready,
  s_axi_control_rdata,
  s_axi_control_rresp,
  s_axi_control_rvalid,
  s_axi_control_rready,
  s_axi_control_aclk,
  s_axi_control_aresetn,
  s_axi_data_awaddr,
  s_axi_data_awprot,
  s_axi_data_awvalid,
  s_axi_data_awready,
  s_axi_data_wdata,
  s_axi_data_wstrb,
  s_axi_data_wvalid,
  s_axi_data_wready,
  s_axi_data_bresp,
  s_axi_data_bvalid,
  s_axi_data_bready,
  s_axi_data_araddr,
  s_axi_data_arprot,
  s_axi_data_arvalid,
  s_axi_data_arready,
  s_axi_data_rdata,
  s_axi_data_rresp,
  s_axi_data_rvalid,
  s_axi_data_rready,
  s_axi_data_aclk,
  s_axi_data_aresetn
);

(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_OUT EN" *)
output wire bram_out_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_OUT DOUT" *)
input wire [23 : 0] bram_out_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_OUT DIN" *)
output wire [23 : 0] bram_out_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_OUT WE" *)
output wire bram_out_we;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_OUT ADDR" *)
output wire [13 : 0] bram_out_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_OUT CLK" *)
output wire bram_out_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_OUT RST" *)
output wire bram_out_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_IN EN" *)
output wire bram_in_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_IN DOUT" *)
input wire [23 : 0] bram_in_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_IN DIN" *)
output wire [23 : 0] bram_in_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_IN WE" *)
output wire bram_in_we;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_IN ADDR" *)
output wire [13 : 0] bram_in_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_IN CLK" *)
output wire bram_in_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_IN RST" *)
output wire bram_in_rst;
output wire led_clk;
output wire led_lat;
output wire led_oe;
output wire [3 : 0] led_addr;
output wire [1 : 0] led_r;
output wire [1 : 0] led_g;
output wire [1 : 0] led_b;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Control AWADDR" *)
input wire [3 : 0] s_axi_control_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Control AWPROT" *)
input wire [2 : 0] s_axi_control_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Control AWVALID" *)
input wire s_axi_control_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Control AWREADY" *)
output wire s_axi_control_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Control WDATA" *)
input wire [31 : 0] s_axi_control_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Control WSTRB" *)
input wire [3 : 0] s_axi_control_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Control WVALID" *)
input wire s_axi_control_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Control WREADY" *)
output wire s_axi_control_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Control BRESP" *)
output wire [1 : 0] s_axi_control_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Control BVALID" *)
output wire s_axi_control_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Control BREADY" *)
input wire s_axi_control_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Control ARADDR" *)
input wire [3 : 0] s_axi_control_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Control ARPROT" *)
input wire [2 : 0] s_axi_control_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Control ARVALID" *)
input wire s_axi_control_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Control ARREADY" *)
output wire s_axi_control_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Control RDATA" *)
output wire [31 : 0] s_axi_control_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Control RRESP" *)
output wire [1 : 0] s_axi_control_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Control RVALID" *)
output wire s_axi_control_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Control RREADY" *)
input wire s_axi_control_rready;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_Control_CLK CLK" *)
input wire s_axi_control_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_Control_RST RST" *)
input wire s_axi_control_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Data AWADDR" *)
input wire [29 : 0] s_axi_data_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Data AWPROT" *)
input wire [2 : 0] s_axi_data_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Data AWVALID" *)
input wire s_axi_data_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Data AWREADY" *)
output wire s_axi_data_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Data WDATA" *)
input wire [31 : 0] s_axi_data_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Data WSTRB" *)
input wire [3 : 0] s_axi_data_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Data WVALID" *)
input wire s_axi_data_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Data WREADY" *)
output wire s_axi_data_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Data BRESP" *)
output wire [1 : 0] s_axi_data_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Data BVALID" *)
output wire s_axi_data_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Data BREADY" *)
input wire s_axi_data_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Data ARADDR" *)
input wire [29 : 0] s_axi_data_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Data ARPROT" *)
input wire [2 : 0] s_axi_data_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Data ARVALID" *)
input wire s_axi_data_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Data ARREADY" *)
output wire s_axi_data_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Data RDATA" *)
output wire [31 : 0] s_axi_data_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Data RRESP" *)
output wire [1 : 0] s_axi_data_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Data RVALID" *)
output wire s_axi_data_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Data RREADY" *)
input wire s_axi_data_rready;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_Data_CLK CLK" *)
input wire s_axi_data_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_Data_RST RST" *)
input wire s_axi_data_aresetn;

  true_color_dot_led_v1_0 #(
    .C_S_AXI_Control_DATA_WIDTH(32),  // Width of S_AXI data bus
    .C_S_AXI_Control_ADDR_WIDTH(4),  // Width of S_AXI address bus
    .C_S_AXI_Data_DATA_WIDTH(32),  // Width of S_AXI data bus
    .C_S_AXI_Data_ADDR_WIDTH(30),  // Width of S_AXI address bus
    .C_BRAM_ADDR_WIDTH(14),
    .C_DEFAULT_WIDTH(32),
    .C_DEFAULT_HEIGHT(16),
    .C_DEFAULT_PRESCALE(8)
  ) inst (
    .bram_out_en(bram_out_en),
    .bram_out_dout(bram_out_dout),
    .bram_out_din(bram_out_din),
    .bram_out_we(bram_out_we),
    .bram_out_addr(bram_out_addr),
    .bram_out_clk(bram_out_clk),
    .bram_out_rst(bram_out_rst),
    .bram_in_en(bram_in_en),
    .bram_in_dout(bram_in_dout),
    .bram_in_din(bram_in_din),
    .bram_in_we(bram_in_we),
    .bram_in_addr(bram_in_addr),
    .bram_in_clk(bram_in_clk),
    .bram_in_rst(bram_in_rst),
    .led_clk(led_clk),
    .led_lat(led_lat),
    .led_oe(led_oe),
    .led_addr(led_addr),
    .led_r(led_r),
    .led_g(led_g),
    .led_b(led_b),
    .s_axi_control_awaddr(s_axi_control_awaddr),
    .s_axi_control_awprot(s_axi_control_awprot),
    .s_axi_control_awvalid(s_axi_control_awvalid),
    .s_axi_control_awready(s_axi_control_awready),
    .s_axi_control_wdata(s_axi_control_wdata),
    .s_axi_control_wstrb(s_axi_control_wstrb),
    .s_axi_control_wvalid(s_axi_control_wvalid),
    .s_axi_control_wready(s_axi_control_wready),
    .s_axi_control_bresp(s_axi_control_bresp),
    .s_axi_control_bvalid(s_axi_control_bvalid),
    .s_axi_control_bready(s_axi_control_bready),
    .s_axi_control_araddr(s_axi_control_araddr),
    .s_axi_control_arprot(s_axi_control_arprot),
    .s_axi_control_arvalid(s_axi_control_arvalid),
    .s_axi_control_arready(s_axi_control_arready),
    .s_axi_control_rdata(s_axi_control_rdata),
    .s_axi_control_rresp(s_axi_control_rresp),
    .s_axi_control_rvalid(s_axi_control_rvalid),
    .s_axi_control_rready(s_axi_control_rready),
    .s_axi_control_aclk(s_axi_control_aclk),
    .s_axi_control_aresetn(s_axi_control_aresetn),
    .s_axi_data_awaddr(s_axi_data_awaddr),
    .s_axi_data_awprot(s_axi_data_awprot),
    .s_axi_data_awvalid(s_axi_data_awvalid),
    .s_axi_data_awready(s_axi_data_awready),
    .s_axi_data_wdata(s_axi_data_wdata),
    .s_axi_data_wstrb(s_axi_data_wstrb),
    .s_axi_data_wvalid(s_axi_data_wvalid),
    .s_axi_data_wready(s_axi_data_wready),
    .s_axi_data_bresp(s_axi_data_bresp),
    .s_axi_data_bvalid(s_axi_data_bvalid),
    .s_axi_data_bready(s_axi_data_bready),
    .s_axi_data_araddr(s_axi_data_araddr),
    .s_axi_data_arprot(s_axi_data_arprot),
    .s_axi_data_arvalid(s_axi_data_arvalid),
    .s_axi_data_arready(s_axi_data_arready),
    .s_axi_data_rdata(s_axi_data_rdata),
    .s_axi_data_rresp(s_axi_data_rresp),
    .s_axi_data_rvalid(s_axi_data_rvalid),
    .s_axi_data_rready(s_axi_data_rready),
    .s_axi_data_aclk(s_axi_data_aclk),
    .s_axi_data_aresetn(s_axi_data_aresetn)
  );
endmodule
