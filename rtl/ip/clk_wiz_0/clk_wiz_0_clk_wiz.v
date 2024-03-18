
// file: clk_wiz_0.v
// 
// (c) Copyright 2008 - 2013 Xilinx, Inc. All rights reserved.
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
//----------------------------------------------------------------------------
// User entered comments
//----------------------------------------------------------------------------
// None
//
//----------------------------------------------------------------------------
//  Output     Output      Phase    Duty Cycle   Pk-to-Pk     Phase
//   Clock     Freq (MHz)  (degrees)    (%)     Jitter (ps)  Error (ps)
//----------------------------------------------------------------------------
// clk_wzd_100___100.000______0.000______50.0______137.681____105.461
// clk_wzd_90____90.000______0.000______50.0______140.709____105.461
// clk_wzd_80____81.818______0.000______50.0______143.527____105.461
// clk_wzd_70____69.231______0.000______50.0______148.662____105.461
// clk_wzd_60____60.000______0.000______50.0______153.276____105.461
// clk_wzd_50____50.000______0.000______50.0______159.475____105.461
// clk_wzd_110___112.500______0.000______50.0______134.399____105.461
//
//----------------------------------------------------------------------------
// Input Clock   Freq (MHz)    Input Jitter (UI)
//----------------------------------------------------------------------------
// __primary_________100.000____________0.010

`timescale 1ps/1ps

module clk_wiz_0_clk_wiz 

 (// Clock in ports
  // Clock out ports
  output        clk_wzd_100,
  output        clk_wzd_90,
  output        clk_wzd_80,
  output        clk_wzd_70,
  output        clk_wzd_60,
  output        clk_wzd_50,
  output        clk_wzd_110,
  // Status and control signals
  input         reset,
  output        locked,
  input         clk_in1
 );
  // Input buffering
  //------------------------------------
wire clk_in1_clk_wiz_0;
wire clk_in2_clk_wiz_0;
  IBUF clkin1_ibufg
   (.O (clk_in1_clk_wiz_0),
    .I (clk_in1));




  // Clocking PRIMITIVE
  //------------------------------------

  // Instantiation of the MMCM PRIMITIVE
  //    * Unused inputs are tied off
  //    * Unused outputs are labeled unused

  wire        clk_wzd_100_clk_wiz_0;
  wire        clk_wzd_90_clk_wiz_0;
  wire        clk_wzd_80_clk_wiz_0;
  wire        clk_wzd_70_clk_wiz_0;
  wire        clk_wzd_60_clk_wiz_0;
  wire        clk_wzd_50_clk_wiz_0;
  wire        clk_wzd_110_clk_wiz_0;

  wire [15:0] do_unused;
  wire        drdy_unused;
  wire        psdone_unused;
  wire        locked_int;
  wire        clkfbout_clk_wiz_0;
  wire        clkfbout_buf_clk_wiz_0;
  wire        clkfboutb_unused;
    wire clkout0b_unused;
   wire clkout1b_unused;
   wire clkout2b_unused;
   wire clkout3b_unused;
  wire        clkfbstopped_unused;
  wire        clkinstopped_unused;
  wire        reset_high;

  MMCME2_ADV
  #(.BANDWIDTH            ("OPTIMIZED"),
    .CLKOUT4_CASCADE      ("FALSE"),
    .COMPENSATION         ("ZHOLD"),
    .STARTUP_WAIT         ("FALSE"),
    .DIVCLK_DIVIDE        (1),
    .CLKFBOUT_MULT_F      (9.000),
    .CLKFBOUT_PHASE       (0.000),
    .CLKFBOUT_USE_FINE_PS ("FALSE"),
    .CLKOUT0_DIVIDE_F     (9.000),
    .CLKOUT0_PHASE        (0.000),
    .CLKOUT0_DUTY_CYCLE   (0.500),
    .CLKOUT0_USE_FINE_PS  ("FALSE"),
    .CLKOUT1_DIVIDE       (10),
    .CLKOUT1_PHASE        (0.000),
    .CLKOUT1_DUTY_CYCLE   (0.500),
    .CLKOUT1_USE_FINE_PS  ("FALSE"),
    .CLKOUT2_DIVIDE       (11),
    .CLKOUT2_PHASE        (0.000),
    .CLKOUT2_DUTY_CYCLE   (0.500),
    .CLKOUT2_USE_FINE_PS  ("FALSE"),
    .CLKOUT3_DIVIDE       (13),
    .CLKOUT3_PHASE        (0.000),
    .CLKOUT3_DUTY_CYCLE   (0.500),
    .CLKOUT3_USE_FINE_PS  ("FALSE"),
    .CLKOUT4_DIVIDE       (15),
    .CLKOUT4_PHASE        (0.000),
    .CLKOUT4_DUTY_CYCLE   (0.500),
    .CLKOUT4_USE_FINE_PS  ("FALSE"),
    .CLKOUT5_DIVIDE       (18),
    .CLKOUT5_PHASE        (0.000),
    .CLKOUT5_DUTY_CYCLE   (0.500),
    .CLKOUT5_USE_FINE_PS  ("FALSE"),
    .CLKOUT6_DIVIDE       (8),
    .CLKOUT6_PHASE        (0.000),
    .CLKOUT6_DUTY_CYCLE   (0.500),
    .CLKOUT6_USE_FINE_PS  ("FALSE"),
    .CLKIN1_PERIOD        (10.000))
  mmcm_adv_inst
    // Output clocks
   (
    .CLKFBOUT            (clkfbout_clk_wiz_0),
    .CLKFBOUTB           (clkfboutb_unused),
    .CLKOUT0             (clk_wzd_100_clk_wiz_0),
    .CLKOUT0B            (clkout0b_unused),
    .CLKOUT1             (clk_wzd_90_clk_wiz_0),
    .CLKOUT1B            (clkout1b_unused),
    .CLKOUT2             (clk_wzd_80_clk_wiz_0),
    .CLKOUT2B            (clkout2b_unused),
    .CLKOUT3             (clk_wzd_70_clk_wiz_0),
    .CLKOUT3B            (clkout3b_unused),
    .CLKOUT4             (clk_wzd_60_clk_wiz_0),
    .CLKOUT5             (clk_wzd_50_clk_wiz_0),
    .CLKOUT6             (clk_wzd_110_clk_wiz_0),
     // Input clock control
    .CLKFBIN             (clkfbout_buf_clk_wiz_0),
    .CLKIN1              (clk_in1_clk_wiz_0),
    .CLKIN2              (1'b0),
     // Tied to always select the primary input clock
    .CLKINSEL            (1'b1),
    // Ports for dynamic reconfiguration
    .DADDR               (7'h0),
    .DCLK                (1'b0),
    .DEN                 (1'b0),
    .DI                  (16'h0),
    .DO                  (do_unused),
    .DRDY                (drdy_unused),
    .DWE                 (1'b0),
    // Ports for dynamic phase shift
    .PSCLK               (1'b0),
    .PSEN                (1'b0),
    .PSINCDEC            (1'b0),
    .PSDONE              (psdone_unused),
    // Other control and status signals
    .LOCKED              (locked_int),
    .CLKINSTOPPED        (clkinstopped_unused),
    .CLKFBSTOPPED        (clkfbstopped_unused),
    .PWRDWN              (1'b0),
    .RST                 (reset_high));
  assign reset_high = reset; 

  assign locked = locked_int;
// Clock Monitor clock assigning
//--------------------------------------
 // Output buffering
  //-----------------------------------

  BUFG clkf_buf
   (.O (clkfbout_buf_clk_wiz_0),
    .I (clkfbout_clk_wiz_0));






  BUFG clkout1_buf
   (.O   (clk_wzd_100),
    .I   (clk_wzd_100_clk_wiz_0));


  BUFG clkout2_buf
   (.O   (clk_wzd_90),
    .I   (clk_wzd_90_clk_wiz_0));

  BUFG clkout3_buf
   (.O   (clk_wzd_80),
    .I   (clk_wzd_80_clk_wiz_0));

  BUFG clkout4_buf
   (.O   (clk_wzd_70),
    .I   (clk_wzd_70_clk_wiz_0));

  BUFG clkout5_buf
   (.O   (clk_wzd_60),
    .I   (clk_wzd_60_clk_wiz_0));

  BUFG clkout6_buf
   (.O   (clk_wzd_50),
    .I   (clk_wzd_50_clk_wiz_0));

  BUFG clkout7_buf
   (.O   (clk_wzd_110),
    .I   (clk_wzd_110_clk_wiz_0));



endmodule
