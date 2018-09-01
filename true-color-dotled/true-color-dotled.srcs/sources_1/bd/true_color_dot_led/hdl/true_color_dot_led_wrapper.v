//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.1 (lin64) Build 1538259 Fri Apr  8 15:45:23 MDT 2016
//Date        : Mon May 29 21:39:50 2017
//Host        : xilinx running 64-bit Ubuntu 16.04.2 LTS
//Command     : generate_target true_color_dot_led_wrapper.bd
//Design      : true_color_dot_led_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module true_color_dot_led_wrapper
   (led_addr,
    led_b,
    led_clk,
    led_g,
    led_lat,
    led_oe,
    led_r,
    leds_6bits_tri_o);
  output [2:0]led_addr;
  output [1:0]led_b;
  output led_clk;
  output [1:0]led_g;
  output led_lat;
  output led_oe;
  output [1:0]led_r;
  output [5:0]leds_6bits_tri_o;

  wire [2:0]led_addr;
  wire [1:0]led_b;
  wire led_clk;
  wire [1:0]led_g;
  wire led_lat;
  wire led_oe;
  wire [1:0]led_r;
  wire [5:0]leds_6bits_tri_o;

  true_color_dot_led true_color_dot_led_i
       (.led_addr(led_addr),
        .led_b(led_b),
        .led_clk(led_clk),
        .led_g(led_g),
        .led_lat(led_lat),
        .led_oe(led_oe),
        .led_r(led_r),
        .leds_6bits_tri_o(leds_6bits_tri_o));
endmodule
