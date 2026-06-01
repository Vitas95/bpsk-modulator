////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: fir_filter.v
// /___/   /\     Timestamp: Sun May 31 11:27:25 2026
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -w -sim -ofmt verilog ./tmp/_cg/fir_filter.ngc ./tmp/_cg/fir_filter.v 
// Device	: 6slx16ftg256-3
// Input file	: ./tmp/_cg/fir_filter.ngc
// Output file	: ./tmp/_cg/fir_filter.v
// # of Modules	: 1
// Design Name	: fir_filter
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module fir_filter (
  rfd, rdy, clk, dout, din
)/* synthesis syn_black_box syn_noprune=1 */;
  output rfd;
  output rdy;
  input clk;
  output [16 : 0] dout;
  input [7 : 0] din;
  
  // synthesis translate_off
  
  wire NlwRenamedSig_OI_rfd;
  wire \blk00000003/sig000000e7 ;
  wire \blk00000003/sig000000e6 ;
  wire \blk00000003/sig000000e5 ;
  wire \blk00000003/sig000000e4 ;
  wire \blk00000003/sig000000e3 ;
  wire \blk00000003/sig000000e2 ;
  wire \blk00000003/sig000000e1 ;
  wire \blk00000003/sig000000e0 ;
  wire \blk00000003/sig000000df ;
  wire \blk00000003/sig000000de ;
  wire \blk00000003/sig000000dd ;
  wire \blk00000003/sig000000dc ;
  wire \blk00000003/sig000000db ;
  wire \blk00000003/sig000000da ;
  wire \blk00000003/sig000000d9 ;
  wire \blk00000003/sig000000d8 ;
  wire \blk00000003/sig000000d7 ;
  wire \blk00000003/sig000000d6 ;
  wire \blk00000003/sig000000d5 ;
  wire \blk00000003/sig000000d4 ;
  wire \blk00000003/sig000000d3 ;
  wire \blk00000003/sig000000d2 ;
  wire \blk00000003/sig000000d1 ;
  wire \blk00000003/sig000000d0 ;
  wire \blk00000003/sig000000cf ;
  wire \blk00000003/sig000000ce ;
  wire \blk00000003/sig000000cd ;
  wire \blk00000003/sig000000cc ;
  wire \blk00000003/sig000000cb ;
  wire \blk00000003/sig000000ca ;
  wire \blk00000003/sig000000c9 ;
  wire \blk00000003/sig000000c8 ;
  wire \blk00000003/sig000000c7 ;
  wire \blk00000003/sig000000c6 ;
  wire \blk00000003/sig000000c5 ;
  wire \blk00000003/sig000000c4 ;
  wire \blk00000003/sig000000c3 ;
  wire \blk00000003/sig000000c2 ;
  wire \blk00000003/sig000000c1 ;
  wire \blk00000003/sig000000c0 ;
  wire \blk00000003/sig000000bf ;
  wire \blk00000003/sig000000be ;
  wire \blk00000003/sig000000bd ;
  wire \blk00000003/sig000000bc ;
  wire \blk00000003/sig000000bb ;
  wire \blk00000003/sig000000ba ;
  wire \blk00000003/sig000000b9 ;
  wire \blk00000003/sig000000b8 ;
  wire \blk00000003/sig000000b7 ;
  wire \blk00000003/sig000000b6 ;
  wire \blk00000003/sig000000b5 ;
  wire \blk00000003/sig000000b4 ;
  wire \blk00000003/sig000000b3 ;
  wire \blk00000003/sig000000b2 ;
  wire \blk00000003/sig000000b1 ;
  wire \blk00000003/sig000000b0 ;
  wire \blk00000003/sig000000af ;
  wire \blk00000003/sig000000ae ;
  wire \blk00000003/sig000000ad ;
  wire \blk00000003/sig000000ac ;
  wire \blk00000003/sig000000ab ;
  wire \blk00000003/sig000000aa ;
  wire \blk00000003/sig000000a9 ;
  wire \blk00000003/sig000000a8 ;
  wire \blk00000003/sig000000a7 ;
  wire \blk00000003/sig000000a6 ;
  wire \blk00000003/sig000000a5 ;
  wire \blk00000003/sig000000a4 ;
  wire \blk00000003/sig000000a3 ;
  wire \blk00000003/sig000000a2 ;
  wire \blk00000003/sig000000a1 ;
  wire \blk00000003/sig000000a0 ;
  wire \blk00000003/sig0000009f ;
  wire \blk00000003/sig0000009e ;
  wire \blk00000003/sig0000009d ;
  wire \blk00000003/sig0000009c ;
  wire \blk00000003/sig0000009b ;
  wire \blk00000003/sig0000009a ;
  wire \blk00000003/sig00000099 ;
  wire \blk00000003/sig00000098 ;
  wire \blk00000003/sig00000097 ;
  wire \blk00000003/sig00000096 ;
  wire \blk00000003/sig00000095 ;
  wire \blk00000003/sig00000094 ;
  wire \blk00000003/sig00000093 ;
  wire \blk00000003/sig00000092 ;
  wire \blk00000003/sig00000091 ;
  wire \blk00000003/sig00000090 ;
  wire \blk00000003/sig0000008f ;
  wire \blk00000003/sig0000008e ;
  wire \blk00000003/sig0000008d ;
  wire \blk00000003/sig0000008c ;
  wire \blk00000003/sig0000008b ;
  wire \blk00000003/sig0000008a ;
  wire \blk00000003/sig00000089 ;
  wire \blk00000003/sig00000088 ;
  wire \blk00000003/sig00000087 ;
  wire \blk00000003/sig00000086 ;
  wire \blk00000003/sig00000085 ;
  wire \blk00000003/sig00000084 ;
  wire \blk00000003/sig00000083 ;
  wire \blk00000003/sig00000082 ;
  wire \blk00000003/sig00000081 ;
  wire \blk00000003/sig00000080 ;
  wire \blk00000003/sig0000007f ;
  wire \blk00000003/sig0000007e ;
  wire \blk00000003/sig0000007d ;
  wire \blk00000003/sig0000007c ;
  wire \blk00000003/sig0000007b ;
  wire \blk00000003/sig0000007a ;
  wire \blk00000003/sig00000079 ;
  wire \blk00000003/sig00000078 ;
  wire \blk00000003/sig00000077 ;
  wire \blk00000003/sig00000076 ;
  wire \blk00000003/sig00000075 ;
  wire \blk00000003/sig00000074 ;
  wire \blk00000003/sig00000073 ;
  wire \blk00000003/sig00000072 ;
  wire \blk00000003/sig00000071 ;
  wire \blk00000003/sig00000070 ;
  wire \blk00000003/sig0000006f ;
  wire \blk00000003/sig0000006e ;
  wire \blk00000003/sig0000006d ;
  wire \blk00000003/sig0000006c ;
  wire \blk00000003/sig0000006b ;
  wire \blk00000003/sig0000006a ;
  wire \blk00000003/sig00000069 ;
  wire \blk00000003/sig00000068 ;
  wire \blk00000003/sig00000067 ;
  wire \blk00000003/sig00000066 ;
  wire \blk00000003/sig00000065 ;
  wire \blk00000003/sig00000064 ;
  wire \blk00000003/sig00000063 ;
  wire \blk00000003/sig00000062 ;
  wire \blk00000003/sig00000061 ;
  wire \blk00000003/sig00000060 ;
  wire \blk00000003/sig0000005f ;
  wire \blk00000003/sig0000005e ;
  wire \blk00000003/sig0000005d ;
  wire \blk00000003/sig0000005c ;
  wire \blk00000003/sig0000005b ;
  wire \blk00000003/sig0000005a ;
  wire \blk00000003/sig00000059 ;
  wire \blk00000003/sig00000058 ;
  wire \blk00000003/sig00000057 ;
  wire \blk00000003/sig00000056 ;
  wire \blk00000003/sig00000055 ;
  wire \blk00000003/sig00000054 ;
  wire \blk00000003/sig00000053 ;
  wire \blk00000003/sig00000052 ;
  wire \blk00000003/sig00000051 ;
  wire \blk00000003/sig00000050 ;
  wire \blk00000003/sig0000004f ;
  wire \blk00000003/sig0000004e ;
  wire \blk00000003/sig0000004d ;
  wire \blk00000003/sig0000004c ;
  wire \blk00000003/sig0000004b ;
  wire \blk00000003/sig0000004a ;
  wire \blk00000003/sig00000049 ;
  wire \blk00000003/sig00000048 ;
  wire \blk00000003/sig00000047 ;
  wire \blk00000003/sig00000046 ;
  wire \blk00000003/sig00000045 ;
  wire \blk00000003/sig00000044 ;
  wire \blk00000003/sig00000043 ;
  wire \blk00000003/sig00000042 ;
  wire \blk00000003/sig00000041 ;
  wire \blk00000003/sig00000040 ;
  wire \blk00000003/sig0000003f ;
  wire \blk00000003/sig0000003e ;
  wire \blk00000003/sig0000003d ;
  wire \blk00000003/sig0000003c ;
  wire \blk00000003/sig0000003b ;
  wire \blk00000003/sig0000003a ;
  wire \blk00000003/sig00000039 ;
  wire \blk00000003/sig00000038 ;
  wire \blk00000003/sig00000037 ;
  wire \blk00000003/sig00000036 ;
  wire \blk00000003/sig00000035 ;
  wire \blk00000003/sig00000034 ;
  wire \blk00000003/sig00000033 ;
  wire \blk00000003/sig00000032 ;
  wire \blk00000003/sig00000031 ;
  wire \blk00000003/sig00000030 ;
  wire \blk00000003/sig0000002f ;
  wire \blk00000003/sig0000002e ;
  wire \blk00000003/sig0000002d ;
  wire \blk00000003/sig0000002c ;
  wire \blk00000003/sig0000002b ;
  wire \blk00000003/sig0000002a ;
  wire \blk00000003/sig00000029 ;
  wire \blk00000003/sig00000028 ;
  wire \blk00000003/sig00000027 ;
  wire \blk00000003/sig00000026 ;
  wire \blk00000003/sig00000025 ;
  wire \blk00000003/sig00000024 ;
  wire \blk00000003/sig00000023 ;
  wire \blk00000003/sig00000022 ;
  wire \blk00000003/sig00000021 ;
  wire \blk00000003/sig00000020 ;
  wire \blk00000003/sig0000001f ;
  wire \blk00000003/sig0000000b ;
  wire \blk00000003/sig0000000a ;
  wire \blk00000003/blk00000046/sig00000106 ;
  wire \blk00000003/blk00000046/sig00000105 ;
  wire \blk00000003/blk00000046/sig00000104 ;
  wire \blk00000003/blk00000046/sig00000103 ;
  wire \blk00000003/blk00000046/sig00000102 ;
  wire \blk00000003/blk00000046/sig00000101 ;
  wire \blk00000003/blk00000046/sig00000100 ;
  wire \blk00000003/blk00000046/sig000000ff ;
  wire \blk00000003/blk00000046/sig000000fe ;
  wire \blk00000003/blk00000058/sig00000125 ;
  wire \blk00000003/blk00000058/sig00000124 ;
  wire \blk00000003/blk00000058/sig00000123 ;
  wire \blk00000003/blk00000058/sig00000122 ;
  wire \blk00000003/blk00000058/sig00000121 ;
  wire \blk00000003/blk00000058/sig00000120 ;
  wire \blk00000003/blk00000058/sig0000011f ;
  wire \blk00000003/blk00000058/sig0000011e ;
  wire \blk00000003/blk00000058/sig0000011d ;
  wire \blk00000003/blk0000006a/sig00000139 ;
  wire \blk00000003/blk0000006a/sig00000138 ;
  wire \blk00000003/blk0000006a/sig00000137 ;
  wire \blk00000003/blk0000006a/sig00000136 ;
  wire \blk00000003/blk0000006a/sig00000135 ;
  wire \blk00000003/blk0000006a/sig00000134 ;
  wire \blk00000003/blk0000006a/sig00000133 ;
  wire \blk00000003/blk0000006a/sig00000132 ;
  wire NLW_blk00000001_P_UNCONNECTED;
  wire NLW_blk00000002_G_UNCONNECTED;
  wire \NLW_blk00000003/blk000000f4_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000f2_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000f0_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000ee_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000ec_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000ea_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e8_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e6_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e4_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e2_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e0_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000de_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000dc_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000da_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000d8_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000d6_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000d4_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000d2_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000d0_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000042_O_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000042_LO_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000003d_O_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000003d_LO_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000037_O_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000037_LO_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000030_O_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000030_LO_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000028_O_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000028_LO_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000019_Q_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000000d_LO_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000000b_O_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000000a_LO_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_CARRYOUTF_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_CARRYOUT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<47>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<46>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<45>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<44>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<43>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<42>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<41>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<40>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<39>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<38>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<37>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<36>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<35>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<34>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<33>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<32>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<31>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<30>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<29>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<28>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<27>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<26>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<25>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<24>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<23>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<22>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<21>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<20>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<19>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<18>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_P<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<47>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<46>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<45>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<44>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<43>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<42>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<41>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<40>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<39>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<38>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<37>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<36>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<35>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<34>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<33>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<32>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<31>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<30>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<29>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<28>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<27>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<26>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<25>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<24>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<23>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<22>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<21>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<20>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<19>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<18>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_PCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<35>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<34>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<33>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<32>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<31>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<30>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<29>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<28>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<27>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<26>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<25>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<24>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<23>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<22>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<21>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<20>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<19>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<18>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000009_M<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000046/blk00000057_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000046/blk00000056_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000046/blk00000055_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000046/blk00000054_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000046/blk00000053_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000046/blk00000052_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000046/blk00000051_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000046/blk00000050_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000058/blk00000069_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000058/blk00000068_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000058/blk00000067_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000058/blk00000066_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000058/blk00000065_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000058/blk00000064_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000058/blk00000063_Q15_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000058/blk00000062_Q15_UNCONNECTED ;
  wire [7 : 0] din_0;
  wire [16 : 0] NlwRenamedSig_OI_dout;
  assign
    rfd = NlwRenamedSig_OI_rfd,
    dout[16] = NlwRenamedSig_OI_dout[16],
    dout[15] = NlwRenamedSig_OI_dout[15],
    dout[14] = NlwRenamedSig_OI_dout[14],
    dout[13] = NlwRenamedSig_OI_dout[13],
    dout[12] = NlwRenamedSig_OI_dout[12],
    dout[11] = NlwRenamedSig_OI_dout[11],
    dout[10] = NlwRenamedSig_OI_dout[10],
    dout[9] = NlwRenamedSig_OI_dout[9],
    dout[8] = NlwRenamedSig_OI_dout[8],
    dout[7] = NlwRenamedSig_OI_dout[7],
    dout[6] = NlwRenamedSig_OI_dout[6],
    dout[5] = NlwRenamedSig_OI_dout[5],
    dout[4] = NlwRenamedSig_OI_dout[4],
    dout[3] = NlwRenamedSig_OI_dout[3],
    dout[2] = NlwRenamedSig_OI_dout[2],
    dout[1] = NlwRenamedSig_OI_dout[1],
    dout[0] = NlwRenamedSig_OI_dout[0],
    din_0[7] = din[7],
    din_0[6] = din[6],
    din_0[5] = din[5],
    din_0[4] = din[4],
    din_0[3] = din[3],
    din_0[2] = din[2],
    din_0[1] = din[1],
    din_0[0] = din[0];
  VCC   blk00000001 (
    .P(NLW_blk00000001_P_UNCONNECTED)
  );
  GND   blk00000002 (
    .G(NLW_blk00000002_G_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000f5  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig000000e7 ),
    .Q(\blk00000003/sig000000d2 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000f4  (
    .A0(\blk00000003/sig0000001f ),
    .A1(\blk00000003/sig0000000a ),
    .A2(\blk00000003/sig0000000a ),
    .A3(\blk00000003/sig0000000a ),
    .CE(\blk00000003/sig0000001f ),
    .CLK(clk),
    .D(\blk00000003/sig00000065 ),
    .Q(\blk00000003/sig000000e7 ),
    .Q15(\NLW_blk00000003/blk000000f4_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000f3  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig000000e6 ),
    .Q(\blk00000003/sig000000d1 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000f2  (
    .A0(\blk00000003/sig0000000a ),
    .A1(\blk00000003/sig0000001f ),
    .A2(\blk00000003/sig0000000a ),
    .A3(\blk00000003/sig0000000a ),
    .CE(\blk00000003/sig0000001f ),
    .CLK(clk),
    .D(\blk00000003/sig00000050 ),
    .Q(\blk00000003/sig000000e6 ),
    .Q15(\NLW_blk00000003/blk000000f2_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000f1  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig000000e5 ),
    .Q(\blk00000003/sig000000b6 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000f0  (
    .A0(\blk00000003/sig0000000a ),
    .A1(\blk00000003/sig0000000a ),
    .A2(\blk00000003/sig0000000a ),
    .A3(\blk00000003/sig0000000a ),
    .CE(\blk00000003/sig0000001f ),
    .CLK(clk),
    .D(din_0[0]),
    .Q(\blk00000003/sig000000e5 ),
    .Q15(\NLW_blk00000003/blk000000f0_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000ef  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig000000e4 ),
    .Q(\blk00000003/sig000000b5 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000ee  (
    .A0(\blk00000003/sig0000000a ),
    .A1(\blk00000003/sig0000000a ),
    .A2(\blk00000003/sig0000000a ),
    .A3(\blk00000003/sig0000000a ),
    .CE(\blk00000003/sig0000001f ),
    .CLK(clk),
    .D(din_0[1]),
    .Q(\blk00000003/sig000000e4 ),
    .Q15(\NLW_blk00000003/blk000000ee_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000ed  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig000000e3 ),
    .Q(\blk00000003/sig000000b4 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000ec  (
    .A0(\blk00000003/sig0000000a ),
    .A1(\blk00000003/sig0000000a ),
    .A2(\blk00000003/sig0000000a ),
    .A3(\blk00000003/sig0000000a ),
    .CE(\blk00000003/sig0000001f ),
    .CLK(clk),
    .D(din_0[2]),
    .Q(\blk00000003/sig000000e3 ),
    .Q15(\NLW_blk00000003/blk000000ec_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000eb  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig000000e2 ),
    .Q(\blk00000003/sig000000b3 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000ea  (
    .A0(\blk00000003/sig0000000a ),
    .A1(\blk00000003/sig0000000a ),
    .A2(\blk00000003/sig0000000a ),
    .A3(\blk00000003/sig0000000a ),
    .CE(\blk00000003/sig0000001f ),
    .CLK(clk),
    .D(din_0[3]),
    .Q(\blk00000003/sig000000e2 ),
    .Q15(\NLW_blk00000003/blk000000ea_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000e9  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig000000e1 ),
    .Q(\blk00000003/sig000000b1 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000e8  (
    .A0(\blk00000003/sig0000000a ),
    .A1(\blk00000003/sig0000000a ),
    .A2(\blk00000003/sig0000000a ),
    .A3(\blk00000003/sig0000000a ),
    .CE(\blk00000003/sig0000001f ),
    .CLK(clk),
    .D(din_0[5]),
    .Q(\blk00000003/sig000000e1 ),
    .Q15(\NLW_blk00000003/blk000000e8_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000e7  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig000000e0 ),
    .Q(\blk00000003/sig000000b0 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000e6  (
    .A0(\blk00000003/sig0000000a ),
    .A1(\blk00000003/sig0000000a ),
    .A2(\blk00000003/sig0000000a ),
    .A3(\blk00000003/sig0000000a ),
    .CE(\blk00000003/sig0000001f ),
    .CLK(clk),
    .D(din_0[6]),
    .Q(\blk00000003/sig000000e0 ),
    .Q15(\NLW_blk00000003/blk000000e6_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000e5  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig000000df ),
    .Q(\blk00000003/sig000000b2 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000e4  (
    .A0(\blk00000003/sig0000000a ),
    .A1(\blk00000003/sig0000000a ),
    .A2(\blk00000003/sig0000000a ),
    .A3(\blk00000003/sig0000000a ),
    .CE(\blk00000003/sig0000001f ),
    .CLK(clk),
    .D(din_0[4]),
    .Q(\blk00000003/sig000000df ),
    .Q15(\NLW_blk00000003/blk000000e4_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000e3  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig000000de ),
    .Q(\blk00000003/sig000000af )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000e2  (
    .A0(\blk00000003/sig0000000a ),
    .A1(\blk00000003/sig0000000a ),
    .A2(\blk00000003/sig0000000a ),
    .A3(\blk00000003/sig0000000a ),
    .CE(\blk00000003/sig0000001f ),
    .CLK(clk),
    .D(din_0[7]),
    .Q(\blk00000003/sig000000de ),
    .Q15(\NLW_blk00000003/blk000000e2_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000e1  (
    .C(clk),
    .CE(\blk00000003/sig0000005c ),
    .D(\blk00000003/sig000000dd ),
    .Q(\blk00000003/sig000000be )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000e0  (
    .A0(\blk00000003/sig0000000a ),
    .A1(\blk00000003/sig0000000a ),
    .A2(\blk00000003/sig0000000a ),
    .A3(\blk00000003/sig0000000a ),
    .CE(\blk00000003/sig0000005c ),
    .CLK(clk),
    .D(\blk00000003/sig00000047 ),
    .Q(\blk00000003/sig000000dd ),
    .Q15(\NLW_blk00000003/blk000000e0_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000df  (
    .C(clk),
    .CE(\blk00000003/sig0000005c ),
    .D(\blk00000003/sig000000dc ),
    .Q(\blk00000003/sig000000bc )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000de  (
    .A0(\blk00000003/sig0000000a ),
    .A1(\blk00000003/sig0000000a ),
    .A2(\blk00000003/sig0000000a ),
    .A3(\blk00000003/sig0000000a ),
    .CE(\blk00000003/sig0000005c ),
    .CLK(clk),
    .D(\blk00000003/sig00000045 ),
    .Q(\blk00000003/sig000000dc ),
    .Q15(\NLW_blk00000003/blk000000de_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000dd  (
    .C(clk),
    .CE(\blk00000003/sig0000005c ),
    .D(\blk00000003/sig000000db ),
    .Q(\blk00000003/sig000000bb )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000dc  (
    .A0(\blk00000003/sig0000000a ),
    .A1(\blk00000003/sig0000000a ),
    .A2(\blk00000003/sig0000000a ),
    .A3(\blk00000003/sig0000000a ),
    .CE(\blk00000003/sig0000005c ),
    .CLK(clk),
    .D(\blk00000003/sig00000044 ),
    .Q(\blk00000003/sig000000db ),
    .Q15(\NLW_blk00000003/blk000000dc_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000db  (
    .C(clk),
    .CE(\blk00000003/sig0000005c ),
    .D(\blk00000003/sig000000da ),
    .Q(\blk00000003/sig000000bd )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000da  (
    .A0(\blk00000003/sig0000000a ),
    .A1(\blk00000003/sig0000000a ),
    .A2(\blk00000003/sig0000000a ),
    .A3(\blk00000003/sig0000000a ),
    .CE(\blk00000003/sig0000005c ),
    .CLK(clk),
    .D(\blk00000003/sig00000046 ),
    .Q(\blk00000003/sig000000da ),
    .Q15(\NLW_blk00000003/blk000000da_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000d9  (
    .C(clk),
    .CE(\blk00000003/sig0000005c ),
    .D(\blk00000003/sig000000d9 ),
    .Q(\blk00000003/sig000000ba )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000d8  (
    .A0(\blk00000003/sig0000000a ),
    .A1(\blk00000003/sig0000000a ),
    .A2(\blk00000003/sig0000000a ),
    .A3(\blk00000003/sig0000000a ),
    .CE(\blk00000003/sig0000005c ),
    .CLK(clk),
    .D(\blk00000003/sig00000043 ),
    .Q(\blk00000003/sig000000d9 ),
    .Q15(\NLW_blk00000003/blk000000d8_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000d7  (
    .C(clk),
    .CE(\blk00000003/sig0000005c ),
    .D(\blk00000003/sig000000d8 ),
    .Q(\blk00000003/sig000000b9 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000d6  (
    .A0(\blk00000003/sig0000000a ),
    .A1(\blk00000003/sig0000000a ),
    .A2(\blk00000003/sig0000000a ),
    .A3(\blk00000003/sig0000000a ),
    .CE(\blk00000003/sig0000005c ),
    .CLK(clk),
    .D(\blk00000003/sig00000042 ),
    .Q(\blk00000003/sig000000d8 ),
    .Q15(\NLW_blk00000003/blk000000d6_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000d5  (
    .C(clk),
    .CE(\blk00000003/sig0000005c ),
    .D(\blk00000003/sig000000d7 ),
    .Q(\blk00000003/sig000000b7 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000d4  (
    .A0(\blk00000003/sig0000000a ),
    .A1(\blk00000003/sig0000000a ),
    .A2(\blk00000003/sig0000000a ),
    .A3(\blk00000003/sig0000000a ),
    .CE(\blk00000003/sig0000005c ),
    .CLK(clk),
    .D(\blk00000003/sig00000040 ),
    .Q(\blk00000003/sig000000d7 ),
    .Q15(\NLW_blk00000003/blk000000d4_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000d3  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig000000d6 ),
    .Q(\blk00000003/sig0000006d )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000d2  (
    .A0(\blk00000003/sig0000000a ),
    .A1(\blk00000003/sig0000001f ),
    .A2(\blk00000003/sig0000000a ),
    .A3(\blk00000003/sig0000000a ),
    .CE(\blk00000003/sig0000001f ),
    .CLK(clk),
    .D(\blk00000003/sig0000005e ),
    .Q(\blk00000003/sig000000d6 ),
    .Q15(\NLW_blk00000003/blk000000d2_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000d1  (
    .C(clk),
    .CE(\blk00000003/sig0000005c ),
    .D(\blk00000003/sig000000d5 ),
    .Q(\blk00000003/sig000000b8 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk000000d0  (
    .A0(\blk00000003/sig0000000a ),
    .A1(\blk00000003/sig0000000a ),
    .A2(\blk00000003/sig0000000a ),
    .A3(\blk00000003/sig0000000a ),
    .CE(\blk00000003/sig0000005c ),
    .CLK(clk),
    .D(\blk00000003/sig00000041 ),
    .Q(\blk00000003/sig000000d5 ),
    .Q15(\NLW_blk00000003/blk000000d0_Q15_UNCONNECTED )
  );
  INV   \blk00000003/blk000000cf  (
    .I(\blk00000003/sig0000005e ),
    .O(\blk00000003/sig0000003f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000ce  (
    .C(clk),
    .D(\blk00000003/sig000000d4 ),
    .Q(\blk00000003/sig000000d3 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk000000cd  (
    .I0(\blk00000003/sig0000005f ),
    .I1(\blk00000003/sig0000005b ),
    .I2(\blk00000003/sig000000d3 ),
    .O(\blk00000003/sig000000d4 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000003/blk000000cc  (
    .I0(\blk00000003/sig000000ae ),
    .O(\blk00000003/sig000000ac )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000003/blk000000cb  (
    .I0(\blk00000003/sig000000aa ),
    .O(\blk00000003/sig000000a5 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000003/blk000000ca  (
    .I0(\blk00000003/sig00000089 ),
    .O(\blk00000003/sig00000084 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000003/blk000000c9  (
    .I0(\blk00000003/sig0000007f ),
    .O(\blk00000003/sig0000007a )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000003/blk000000c8  (
    .I0(\blk00000003/sig0000007c ),
    .O(\blk00000003/sig00000071 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000c7  (
    .C(clk),
    .D(\blk00000003/sig000000ad ),
    .Q(\blk00000003/sig000000ae )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000c6  (
    .C(clk),
    .D(\blk00000003/sig000000a9 ),
    .Q(\blk00000003/sig000000ab )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000c5  (
    .C(clk),
    .D(\blk00000003/sig000000a6 ),
    .Q(\blk00000003/sig000000aa )
  );
  FD #(
    .INIT ( 1'b1 ))
  \blk00000003/blk000000c4  (
    .C(clk),
    .D(\blk00000003/sig0000009a ),
    .Q(\blk00000003/sig000000a3 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000c3  (
    .C(clk),
    .D(\blk00000003/sig000000a0 ),
    .Q(\blk00000003/sig000000a2 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \blk00000003/blk000000c2  (
    .C(clk),
    .D(\blk00000003/sig0000009d ),
    .Q(\blk00000003/sig000000a1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000c1  (
    .C(clk),
    .D(\blk00000003/sig0000008e ),
    .Q(\blk00000003/sig00000098 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000c0  (
    .C(clk),
    .D(\blk00000003/sig00000094 ),
    .Q(\blk00000003/sig00000097 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000bf  (
    .C(clk),
    .D(\blk00000003/sig00000091 ),
    .Q(\blk00000003/sig00000096 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000be  (
    .C(clk),
    .D(\blk00000003/sig00000082 ),
    .Q(\blk00000003/sig0000008b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000bd  (
    .C(clk),
    .D(\blk00000003/sig00000088 ),
    .Q(\blk00000003/sig0000008a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000bc  (
    .C(clk),
    .D(\blk00000003/sig00000085 ),
    .Q(\blk00000003/sig00000089 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000bb  (
    .C(clk),
    .D(\blk00000003/sig0000006f ),
    .Q(\blk00000003/sig00000080 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000ba  (
    .C(clk),
    .D(\blk00000003/sig0000007b ),
    .Q(\blk00000003/sig0000007f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000b9  (
    .C(clk),
    .D(\blk00000003/sig00000078 ),
    .Q(\blk00000003/sig0000007e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000b8  (
    .C(clk),
    .D(\blk00000003/sig00000075 ),
    .Q(\blk00000003/sig0000007d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk000000b7  (
    .C(clk),
    .D(\blk00000003/sig00000072 ),
    .Q(\blk00000003/sig0000007c )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk000000b6  (
    .I0(\blk00000003/sig0000000b ),
    .I1(\blk00000003/sig0000006d ),
    .O(\blk00000003/sig000000d0 )
  );
  LUT3 #(
    .INIT ( 8'hE2 ))
  \blk00000003/blk000000b5  (
    .I0(NlwRenamedSig_OI_dout[16]),
    .I1(\blk00000003/sig0000006d ),
    .I2(\blk00000003/sig0000002e ),
    .O(\blk00000003/sig000000cf )
  );
  LUT3 #(
    .INIT ( 8'hE2 ))
  \blk00000003/blk000000b4  (
    .I0(NlwRenamedSig_OI_dout[15]),
    .I1(\blk00000003/sig0000006d ),
    .I2(\blk00000003/sig0000002f ),
    .O(\blk00000003/sig000000ce )
  );
  LUT3 #(
    .INIT ( 8'hE2 ))
  \blk00000003/blk000000b3  (
    .I0(NlwRenamedSig_OI_dout[14]),
    .I1(\blk00000003/sig0000006d ),
    .I2(\blk00000003/sig00000030 ),
    .O(\blk00000003/sig000000cd )
  );
  LUT3 #(
    .INIT ( 8'hE2 ))
  \blk00000003/blk000000b2  (
    .I0(NlwRenamedSig_OI_dout[12]),
    .I1(\blk00000003/sig0000006d ),
    .I2(\blk00000003/sig00000032 ),
    .O(\blk00000003/sig000000cb )
  );
  LUT3 #(
    .INIT ( 8'hE2 ))
  \blk00000003/blk000000b1  (
    .I0(NlwRenamedSig_OI_dout[13]),
    .I1(\blk00000003/sig0000006d ),
    .I2(\blk00000003/sig00000031 ),
    .O(\blk00000003/sig000000cc )
  );
  LUT3 #(
    .INIT ( 8'hE2 ))
  \blk00000003/blk000000b0  (
    .I0(NlwRenamedSig_OI_dout[11]),
    .I1(\blk00000003/sig0000006d ),
    .I2(\blk00000003/sig00000033 ),
    .O(\blk00000003/sig000000ca )
  );
  LUT3 #(
    .INIT ( 8'hE2 ))
  \blk00000003/blk000000af  (
    .I0(NlwRenamedSig_OI_dout[10]),
    .I1(\blk00000003/sig0000006d ),
    .I2(\blk00000003/sig00000034 ),
    .O(\blk00000003/sig000000c9 )
  );
  LUT3 #(
    .INIT ( 8'hE2 ))
  \blk00000003/blk000000ae  (
    .I0(NlwRenamedSig_OI_dout[9]),
    .I1(\blk00000003/sig0000006d ),
    .I2(\blk00000003/sig00000035 ),
    .O(\blk00000003/sig000000c8 )
  );
  LUT3 #(
    .INIT ( 8'hE2 ))
  \blk00000003/blk000000ad  (
    .I0(NlwRenamedSig_OI_dout[8]),
    .I1(\blk00000003/sig0000006d ),
    .I2(\blk00000003/sig00000036 ),
    .O(\blk00000003/sig000000c7 )
  );
  LUT3 #(
    .INIT ( 8'hE2 ))
  \blk00000003/blk000000ac  (
    .I0(NlwRenamedSig_OI_dout[7]),
    .I1(\blk00000003/sig0000006d ),
    .I2(\blk00000003/sig00000037 ),
    .O(\blk00000003/sig000000c6 )
  );
  LUT3 #(
    .INIT ( 8'hE2 ))
  \blk00000003/blk000000ab  (
    .I0(NlwRenamedSig_OI_dout[6]),
    .I1(\blk00000003/sig0000006d ),
    .I2(\blk00000003/sig00000038 ),
    .O(\blk00000003/sig000000c5 )
  );
  LUT3 #(
    .INIT ( 8'hE2 ))
  \blk00000003/blk000000aa  (
    .I0(NlwRenamedSig_OI_dout[5]),
    .I1(\blk00000003/sig0000006d ),
    .I2(\blk00000003/sig00000039 ),
    .O(\blk00000003/sig000000c4 )
  );
  LUT3 #(
    .INIT ( 8'hE2 ))
  \blk00000003/blk000000a9  (
    .I0(NlwRenamedSig_OI_dout[3]),
    .I1(\blk00000003/sig0000006d ),
    .I2(\blk00000003/sig0000003b ),
    .O(\blk00000003/sig000000c2 )
  );
  LUT3 #(
    .INIT ( 8'hE2 ))
  \blk00000003/blk000000a8  (
    .I0(NlwRenamedSig_OI_dout[4]),
    .I1(\blk00000003/sig0000006d ),
    .I2(\blk00000003/sig0000003a ),
    .O(\blk00000003/sig000000c3 )
  );
  LUT3 #(
    .INIT ( 8'hE2 ))
  \blk00000003/blk000000a7  (
    .I0(NlwRenamedSig_OI_dout[2]),
    .I1(\blk00000003/sig0000006d ),
    .I2(\blk00000003/sig0000003c ),
    .O(\blk00000003/sig000000c1 )
  );
  LUT3 #(
    .INIT ( 8'hE2 ))
  \blk00000003/blk000000a6  (
    .I0(NlwRenamedSig_OI_dout[1]),
    .I1(\blk00000003/sig0000006d ),
    .I2(\blk00000003/sig0000003d ),
    .O(\blk00000003/sig000000c0 )
  );
  LUT3 #(
    .INIT ( 8'hE2 ))
  \blk00000003/blk000000a5  (
    .I0(NlwRenamedSig_OI_dout[0]),
    .I1(\blk00000003/sig0000006d ),
    .I2(\blk00000003/sig0000003e ),
    .O(\blk00000003/sig000000bf )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a4  (
    .I0(\blk00000003/sig00000063 ),
    .I1(\blk00000003/sig000000ab ),
    .O(\blk00000003/sig000000a8 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a3  (
    .I0(\blk00000003/sig00000060 ),
    .I1(\blk00000003/sig000000a1 ),
    .O(\blk00000003/sig0000009c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a2  (
    .I0(\blk00000003/sig00000060 ),
    .I1(\blk00000003/sig000000a3 ),
    .O(\blk00000003/sig00000099 )
  );
  LUT3 #(
    .INIT ( 8'hB4 ))
  \blk00000003/blk000000a1  (
    .I0(\blk00000003/sig00000062 ),
    .I1(\blk00000003/sig00000060 ),
    .I2(\blk00000003/sig000000a2 ),
    .O(\blk00000003/sig0000009f )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \blk00000003/blk000000a0  (
    .I0(\blk00000003/sig00000062 ),
    .I1(\blk00000003/sig00000060 ),
    .O(\blk00000003/sig00000095 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \blk00000003/blk0000009f  (
    .I0(\blk00000003/sig00000062 ),
    .I1(\blk00000003/sig00000060 ),
    .I2(\blk00000003/sig00000096 ),
    .O(\blk00000003/sig00000090 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \blk00000003/blk0000009e  (
    .I0(\blk00000003/sig00000062 ),
    .I1(\blk00000003/sig00000060 ),
    .I2(\blk00000003/sig00000097 ),
    .O(\blk00000003/sig00000093 )
  );
  LUT3 #(
    .INIT ( 8'hBC ))
  \blk00000003/blk0000009d  (
    .I0(\blk00000003/sig00000062 ),
    .I1(\blk00000003/sig00000060 ),
    .I2(\blk00000003/sig00000098 ),
    .O(\blk00000003/sig0000008d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk0000009c  (
    .I0(\blk00000003/sig0000008b ),
    .I1(\blk00000003/sig00000050 ),
    .O(\blk00000003/sig00000081 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \blk00000003/blk0000009b  (
    .I0(\blk00000003/sig0000008a ),
    .I1(\blk00000003/sig00000050 ),
    .I2(\blk00000003/sig0000005b ),
    .O(\blk00000003/sig00000087 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk0000009a  (
    .I0(\blk00000003/sig00000080 ),
    .I1(\blk00000003/sig00000054 ),
    .O(\blk00000003/sig0000006e )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \blk00000003/blk00000099  (
    .I0(\blk00000003/sig0000007d ),
    .I1(\blk00000003/sig00000054 ),
    .I2(NlwRenamedSig_OI_rfd),
    .O(\blk00000003/sig00000074 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \blk00000003/blk00000098  (
    .I0(\blk00000003/sig0000007e ),
    .I1(\blk00000003/sig00000054 ),
    .I2(NlwRenamedSig_OI_rfd),
    .O(\blk00000003/sig00000077 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \blk00000003/blk00000097  (
    .I0(\blk00000003/sig0000006c ),
    .I1(NlwRenamedSig_OI_rfd),
    .O(\blk00000003/sig00000059 )
  );
  LUT5 #(
    .INIT ( 32'h00000200 ))
  \blk00000003/blk00000096  (
    .I0(\blk00000003/sig0000007c ),
    .I1(\blk00000003/sig0000007d ),
    .I2(\blk00000003/sig0000007e ),
    .I3(\blk00000003/sig0000007f ),
    .I4(\blk00000003/sig00000080 ),
    .O(\blk00000003/sig00000055 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000003/blk00000095  (
    .I0(\blk00000003/sig00000089 ),
    .I1(\blk00000003/sig0000008a ),
    .I2(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig00000051 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \blk00000003/blk00000094  (
    .I0(\blk00000003/sig0000005f ),
    .I1(\blk00000003/sig000000d3 ),
    .I2(\blk00000003/sig0000005b ),
    .O(\blk00000003/sig00000066 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \blk00000003/blk00000093  (
    .I0(\blk00000003/sig00000050 ),
    .I1(\blk00000003/sig0000005b ),
    .I2(NlwRenamedSig_OI_rfd),
    .O(\blk00000003/sig0000006a )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \blk00000003/blk00000092  (
    .I0(\blk00000003/sig000000d2 ),
    .I1(\blk00000003/sig000000d1 ),
    .O(\blk00000003/sig00000024 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000003/blk00000091  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(\blk00000003/sig000000d2 ),
    .O(\blk00000003/sig00000022 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000003/blk00000090  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(\blk00000003/sig000000d2 ),
    .O(\blk00000003/sig00000020 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000003/blk0000008f  (
    .I0(\blk00000003/sig0000006c ),
    .I1(\blk00000003/sig00000054 ),
    .I2(NlwRenamedSig_OI_rfd),
    .O(\blk00000003/sig0000006b )
  );
  LUT4 #(
    .INIT ( 16'h40EA ))
  \blk00000003/blk0000008e  (
    .I0(\blk00000003/sig00000068 ),
    .I1(\blk00000003/sig0000005f ),
    .I2(\blk00000003/sig0000005b ),
    .I3(NlwRenamedSig_OI_rfd),
    .O(\blk00000003/sig00000067 )
  );
  LUT5 #(
    .INIT ( 32'hBAFA30F0 ))
  \blk00000003/blk0000008d  (
    .I0(\blk00000003/sig00000068 ),
    .I1(\blk00000003/sig0000005f ),
    .I2(\blk00000003/sig00000050 ),
    .I3(\blk00000003/sig0000005b ),
    .I4(NlwRenamedSig_OI_rfd),
    .O(\blk00000003/sig00000069 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000008c  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig000000d0 ),
    .R(\blk00000003/sig0000000a ),
    .Q(\blk00000003/sig0000000b )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000008b  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig000000cf ),
    .R(\blk00000003/sig0000000a ),
    .Q(NlwRenamedSig_OI_dout[16])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000008a  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig000000ce ),
    .R(\blk00000003/sig0000000a ),
    .Q(NlwRenamedSig_OI_dout[15])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000089  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig000000cd ),
    .R(\blk00000003/sig0000000a ),
    .Q(NlwRenamedSig_OI_dout[14])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000088  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig000000cc ),
    .R(\blk00000003/sig0000000a ),
    .Q(NlwRenamedSig_OI_dout[13])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000087  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig000000cb ),
    .R(\blk00000003/sig0000000a ),
    .Q(NlwRenamedSig_OI_dout[12])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000086  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig000000ca ),
    .R(\blk00000003/sig0000000a ),
    .Q(NlwRenamedSig_OI_dout[11])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000085  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig000000c9 ),
    .R(\blk00000003/sig0000000a ),
    .Q(NlwRenamedSig_OI_dout[10])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000084  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig000000c8 ),
    .R(\blk00000003/sig0000000a ),
    .Q(NlwRenamedSig_OI_dout[9])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000083  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig000000c7 ),
    .R(\blk00000003/sig0000000a ),
    .Q(NlwRenamedSig_OI_dout[8])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000082  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig000000c6 ),
    .R(\blk00000003/sig0000000a ),
    .Q(NlwRenamedSig_OI_dout[7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000081  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig000000c5 ),
    .R(\blk00000003/sig0000000a ),
    .Q(NlwRenamedSig_OI_dout[6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000080  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig000000c4 ),
    .R(\blk00000003/sig0000000a ),
    .Q(NlwRenamedSig_OI_dout[5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000007f  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig000000c3 ),
    .R(\blk00000003/sig0000000a ),
    .Q(NlwRenamedSig_OI_dout[4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000007e  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig000000c2 ),
    .R(\blk00000003/sig0000000a ),
    .Q(NlwRenamedSig_OI_dout[3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000007d  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig000000c1 ),
    .R(\blk00000003/sig0000000a ),
    .Q(NlwRenamedSig_OI_dout[2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000007c  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig000000c0 ),
    .R(\blk00000003/sig0000000a ),
    .Q(NlwRenamedSig_OI_dout[1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000007b  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig000000bf ),
    .R(\blk00000003/sig0000000a ),
    .Q(NlwRenamedSig_OI_dout[0])
  );
  MUXCY_L   \blk00000003/blk00000045  (
    .CI(\blk00000003/sig00000061 ),
    .DI(\blk00000003/sig000000ae ),
    .S(\blk00000003/sig000000ac ),
    .LO(\blk00000003/sig000000a7 )
  );
  XORCY   \blk00000003/blk00000044  (
    .CI(\blk00000003/sig00000061 ),
    .LI(\blk00000003/sig000000ac ),
    .O(\blk00000003/sig000000ad )
  );
  MUXCY_L   \blk00000003/blk00000043  (
    .CI(\blk00000003/sig000000a7 ),
    .DI(\blk00000003/sig000000ab ),
    .S(\blk00000003/sig000000a8 ),
    .LO(\blk00000003/sig000000a4 )
  );
  MUXCY_D   \blk00000003/blk00000042  (
    .CI(\blk00000003/sig000000a4 ),
    .DI(\blk00000003/sig000000aa ),
    .S(\blk00000003/sig000000a5 ),
    .O(\NLW_blk00000003/blk00000042_O_UNCONNECTED ),
    .LO(\NLW_blk00000003/blk00000042_LO_UNCONNECTED )
  );
  XORCY   \blk00000003/blk00000041  (
    .CI(\blk00000003/sig000000a7 ),
    .LI(\blk00000003/sig000000a8 ),
    .O(\blk00000003/sig000000a9 )
  );
  XORCY   \blk00000003/blk00000040  (
    .CI(\blk00000003/sig000000a4 ),
    .LI(\blk00000003/sig000000a5 ),
    .O(\blk00000003/sig000000a6 )
  );
  MUXCY_L   \blk00000003/blk0000003f  (
    .CI(\blk00000003/sig0000000a ),
    .DI(\blk00000003/sig000000a3 ),
    .S(\blk00000003/sig00000099 ),
    .LO(\blk00000003/sig0000009e )
  );
  MUXCY_L   \blk00000003/blk0000003e  (
    .CI(\blk00000003/sig0000009e ),
    .DI(\blk00000003/sig000000a2 ),
    .S(\blk00000003/sig0000009f ),
    .LO(\blk00000003/sig0000009b )
  );
  MUXCY_D   \blk00000003/blk0000003d  (
    .CI(\blk00000003/sig0000009b ),
    .DI(\blk00000003/sig000000a1 ),
    .S(\blk00000003/sig0000009c ),
    .O(\NLW_blk00000003/blk0000003d_O_UNCONNECTED ),
    .LO(\NLW_blk00000003/blk0000003d_LO_UNCONNECTED )
  );
  XORCY   \blk00000003/blk0000003c  (
    .CI(\blk00000003/sig0000009e ),
    .LI(\blk00000003/sig0000009f ),
    .O(\blk00000003/sig000000a0 )
  );
  XORCY   \blk00000003/blk0000003b  (
    .CI(\blk00000003/sig0000009b ),
    .LI(\blk00000003/sig0000009c ),
    .O(\blk00000003/sig0000009d )
  );
  XORCY   \blk00000003/blk0000003a  (
    .CI(\blk00000003/sig0000000a ),
    .LI(\blk00000003/sig00000099 ),
    .O(\blk00000003/sig0000009a )
  );
  MUXCY_L   \blk00000003/blk00000039  (
    .CI(\blk00000003/sig0000008c ),
    .DI(\blk00000003/sig00000098 ),
    .S(\blk00000003/sig0000008d ),
    .LO(\blk00000003/sig00000092 )
  );
  MUXCY_L   \blk00000003/blk00000038  (
    .CI(\blk00000003/sig00000092 ),
    .DI(\blk00000003/sig00000097 ),
    .S(\blk00000003/sig00000093 ),
    .LO(\blk00000003/sig0000008f )
  );
  MUXCY_D   \blk00000003/blk00000037  (
    .CI(\blk00000003/sig0000008f ),
    .DI(\blk00000003/sig00000096 ),
    .S(\blk00000003/sig00000090 ),
    .O(\NLW_blk00000003/blk00000037_O_UNCONNECTED ),
    .LO(\NLW_blk00000003/blk00000037_LO_UNCONNECTED )
  );
  MUXCY   \blk00000003/blk00000036  (
    .CI(\blk00000003/sig0000000a ),
    .DI(\blk00000003/sig0000001f ),
    .S(\blk00000003/sig00000095 ),
    .O(\blk00000003/sig0000008c )
  );
  XORCY   \blk00000003/blk00000035  (
    .CI(\blk00000003/sig00000092 ),
    .LI(\blk00000003/sig00000093 ),
    .O(\blk00000003/sig00000094 )
  );
  XORCY   \blk00000003/blk00000034  (
    .CI(\blk00000003/sig0000008f ),
    .LI(\blk00000003/sig00000090 ),
    .O(\blk00000003/sig00000091 )
  );
  XORCY   \blk00000003/blk00000033  (
    .CI(\blk00000003/sig0000008c ),
    .LI(\blk00000003/sig0000008d ),
    .O(\blk00000003/sig0000008e )
  );
  MUXCY_L   \blk00000003/blk00000032  (
    .CI(\blk00000003/sig0000000a ),
    .DI(\blk00000003/sig0000008b ),
    .S(\blk00000003/sig00000081 ),
    .LO(\blk00000003/sig00000086 )
  );
  MUXCY_L   \blk00000003/blk00000031  (
    .CI(\blk00000003/sig00000086 ),
    .DI(\blk00000003/sig0000008a ),
    .S(\blk00000003/sig00000087 ),
    .LO(\blk00000003/sig00000083 )
  );
  MUXCY_D   \blk00000003/blk00000030  (
    .CI(\blk00000003/sig00000083 ),
    .DI(\blk00000003/sig00000089 ),
    .S(\blk00000003/sig00000084 ),
    .O(\NLW_blk00000003/blk00000030_O_UNCONNECTED ),
    .LO(\NLW_blk00000003/blk00000030_LO_UNCONNECTED )
  );
  XORCY   \blk00000003/blk0000002f  (
    .CI(\blk00000003/sig00000086 ),
    .LI(\blk00000003/sig00000087 ),
    .O(\blk00000003/sig00000088 )
  );
  XORCY   \blk00000003/blk0000002e  (
    .CI(\blk00000003/sig00000083 ),
    .LI(\blk00000003/sig00000084 ),
    .O(\blk00000003/sig00000085 )
  );
  XORCY   \blk00000003/blk0000002d  (
    .CI(\blk00000003/sig0000000a ),
    .LI(\blk00000003/sig00000081 ),
    .O(\blk00000003/sig00000082 )
  );
  MUXCY_L   \blk00000003/blk0000002c  (
    .CI(\blk00000003/sig0000000a ),
    .DI(\blk00000003/sig00000080 ),
    .S(\blk00000003/sig0000006e ),
    .LO(\blk00000003/sig00000079 )
  );
  MUXCY_L   \blk00000003/blk0000002b  (
    .CI(\blk00000003/sig00000079 ),
    .DI(\blk00000003/sig0000007f ),
    .S(\blk00000003/sig0000007a ),
    .LO(\blk00000003/sig00000076 )
  );
  MUXCY_L   \blk00000003/blk0000002a  (
    .CI(\blk00000003/sig00000076 ),
    .DI(\blk00000003/sig0000007e ),
    .S(\blk00000003/sig00000077 ),
    .LO(\blk00000003/sig00000073 )
  );
  MUXCY_L   \blk00000003/blk00000029  (
    .CI(\blk00000003/sig00000073 ),
    .DI(\blk00000003/sig0000007d ),
    .S(\blk00000003/sig00000074 ),
    .LO(\blk00000003/sig00000070 )
  );
  MUXCY_D   \blk00000003/blk00000028  (
    .CI(\blk00000003/sig00000070 ),
    .DI(\blk00000003/sig0000007c ),
    .S(\blk00000003/sig00000071 ),
    .O(\NLW_blk00000003/blk00000028_O_UNCONNECTED ),
    .LO(\NLW_blk00000003/blk00000028_LO_UNCONNECTED )
  );
  XORCY   \blk00000003/blk00000027  (
    .CI(\blk00000003/sig00000079 ),
    .LI(\blk00000003/sig0000007a ),
    .O(\blk00000003/sig0000007b )
  );
  XORCY   \blk00000003/blk00000026  (
    .CI(\blk00000003/sig00000076 ),
    .LI(\blk00000003/sig00000077 ),
    .O(\blk00000003/sig00000078 )
  );
  XORCY   \blk00000003/blk00000025  (
    .CI(\blk00000003/sig00000073 ),
    .LI(\blk00000003/sig00000074 ),
    .O(\blk00000003/sig00000075 )
  );
  XORCY   \blk00000003/blk00000024  (
    .CI(\blk00000003/sig00000070 ),
    .LI(\blk00000003/sig00000071 ),
    .O(\blk00000003/sig00000072 )
  );
  XORCY   \blk00000003/blk00000023  (
    .CI(\blk00000003/sig0000000a ),
    .LI(\blk00000003/sig0000006e ),
    .O(\blk00000003/sig0000006f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000022  (
    .C(clk),
    .D(NlwRenamedSig_OI_rfd),
    .Q(\blk00000003/sig00000064 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000021  (
    .C(clk),
    .D(\blk00000003/sig0000006d ),
    .Q(rdy)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \blk00000003/blk00000020  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig0000005a ),
    .S(\blk00000003/sig0000000a ),
    .Q(\blk00000003/sig0000006c )
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \blk00000003/blk0000001f  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig00000058 ),
    .S(\blk00000003/sig0000000a ),
    .Q(NlwRenamedSig_OI_rfd)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000001e  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig0000006b ),
    .R(\blk00000003/sig0000000a ),
    .Q(\blk00000003/sig00000054 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000001d  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig0000006a ),
    .R(\blk00000003/sig0000000a ),
    .Q(\blk00000003/sig00000050 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000001c  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig00000053 ),
    .R(\blk00000003/sig0000000a ),
    .Q(\blk00000003/sig0000005b )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000001b  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig00000069 ),
    .R(\blk00000003/sig0000000a ),
    .Q(\blk00000003/sig0000005f )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000001a  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig00000067 ),
    .R(\blk00000003/sig0000000a ),
    .Q(\blk00000003/sig00000068 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000019  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig00000066 ),
    .R(\blk00000003/sig0000000a ),
    .Q(\NLW_blk00000003/blk00000019_Q_UNCONNECTED )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000018  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig00000066 ),
    .R(\blk00000003/sig0000000a ),
    .Q(\blk00000003/sig00000062 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000017  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig00000064 ),
    .R(\blk00000003/sig0000000a ),
    .Q(\blk00000003/sig00000065 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000016  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig00000062 ),
    .R(\blk00000003/sig0000000a ),
    .Q(\blk00000003/sig00000063 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000015  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig00000060 ),
    .Q(\blk00000003/sig00000061 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000014  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/sig0000005f ),
    .Q(\blk00000003/sig00000060 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000013  (
    .C(clk),
    .D(\blk00000003/sig0000005d ),
    .Q(\blk00000003/sig0000005e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000012  (
    .C(clk),
    .D(\blk00000003/sig0000005c ),
    .Q(\blk00000003/sig0000005d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000011  (
    .C(clk),
    .D(\blk00000003/sig0000005b ),
    .Q(\blk00000003/sig0000005c )
  );
  MUXCY   \blk00000003/blk00000010  (
    .CI(\blk00000003/sig00000057 ),
    .DI(\blk00000003/sig0000001f ),
    .S(\blk00000003/sig00000059 ),
    .O(\blk00000003/sig0000005a )
  );
  XORCY   \blk00000003/blk0000000f  (
    .CI(\blk00000003/sig00000056 ),
    .LI(\blk00000003/sig0000000a ),
    .O(\blk00000003/sig00000058 )
  );
  MUXCY   \blk00000003/blk0000000e  (
    .CI(\blk00000003/sig00000056 ),
    .DI(\blk00000003/sig0000000a ),
    .S(\blk00000003/sig0000001f ),
    .O(\blk00000003/sig00000057 )
  );
  MUXCY_D   \blk00000003/blk0000000d  (
    .CI(\blk00000003/sig00000054 ),
    .DI(\blk00000003/sig0000000a ),
    .S(\blk00000003/sig00000055 ),
    .O(\blk00000003/sig00000056 ),
    .LO(\NLW_blk00000003/blk0000000d_LO_UNCONNECTED )
  );
  XORCY   \blk00000003/blk0000000c  (
    .CI(\blk00000003/sig00000052 ),
    .LI(\blk00000003/sig0000000a ),
    .O(\blk00000003/sig00000053 )
  );
  MUXCY   \blk00000003/blk0000000b  (
    .CI(\blk00000003/sig00000052 ),
    .DI(\blk00000003/sig0000000a ),
    .S(\blk00000003/sig0000001f ),
    .O(\NLW_blk00000003/blk0000000b_O_UNCONNECTED )
  );
  MUXCY_D   \blk00000003/blk0000000a  (
    .CI(\blk00000003/sig00000050 ),
    .DI(\blk00000003/sig0000000a ),
    .S(\blk00000003/sig00000051 ),
    .O(\blk00000003/sig00000052 ),
    .LO(\NLW_blk00000003/blk0000000a_LO_UNCONNECTED )
  );
  DSP48A1 #(
    .A0REG ( 0 ),
    .A1REG ( 1 ),
    .B0REG ( 1 ),
    .B1REG ( 1 ),
    .CARRYINREG ( 0 ),
    .CARRYINSEL ( "OPMODE5" ),
    .CARRYOUTREG ( 0 ),
    .CREG ( 1 ),
    .DREG ( 1 ),
    .MREG ( 1 ),
    .OPMODEREG ( 1 ),
    .PREG ( 1 ),
    .RSTTYPE ( "SYNC" ))
  \blk00000003/blk00000009  (
    .CECARRYIN(\blk00000003/sig0000001f ),
    .RSTC(\blk00000003/sig0000000a ),
    .RSTCARRYIN(\blk00000003/sig0000000a ),
    .CED(\blk00000003/sig0000001f ),
    .RSTD(\blk00000003/sig0000000a ),
    .CEOPMODE(\blk00000003/sig0000001f ),
    .CEC(\blk00000003/sig0000001f ),
    .CARRYOUTF(\NLW_blk00000003/blk00000009_CARRYOUTF_UNCONNECTED ),
    .RSTOPMODE(\blk00000003/sig0000000a ),
    .RSTM(\blk00000003/sig0000000a ),
    .CLK(clk),
    .RSTB(\blk00000003/sig0000000a ),
    .CEM(\blk00000003/sig0000001f ),
    .CEB(\blk00000003/sig0000001f ),
    .CARRYIN(\blk00000003/sig0000000a ),
    .CEP(\blk00000003/sig0000001f ),
    .CEA(\blk00000003/sig0000001f ),
    .CARRYOUT(\NLW_blk00000003/blk00000009_CARRYOUT_UNCONNECTED ),
    .RSTA(\blk00000003/sig0000000a ),
    .RSTP(\blk00000003/sig0000000a ),
    .B({\blk00000003/sig00000026 , \blk00000003/sig00000026 , \blk00000003/sig00000026 , \blk00000003/sig00000026 , \blk00000003/sig00000026 , 
\blk00000003/sig00000026 , \blk00000003/sig00000026 , \blk00000003/sig00000026 , \blk00000003/sig00000026 , \blk00000003/sig00000026 , 
\blk00000003/sig00000026 , \blk00000003/sig00000027 , \blk00000003/sig00000028 , \blk00000003/sig00000029 , \blk00000003/sig0000002a , 
\blk00000003/sig0000002b , \blk00000003/sig0000002c , \blk00000003/sig0000002d }),
    .BCOUT({\NLW_blk00000003/blk00000009_BCOUT<17>_UNCONNECTED , \NLW_blk00000003/blk00000009_BCOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_BCOUT<15>_UNCONNECTED , \NLW_blk00000003/blk00000009_BCOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_BCOUT<13>_UNCONNECTED , \NLW_blk00000003/blk00000009_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_BCOUT<11>_UNCONNECTED , \NLW_blk00000003/blk00000009_BCOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_BCOUT<9>_UNCONNECTED , \NLW_blk00000003/blk00000009_BCOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_BCOUT<7>_UNCONNECTED , \NLW_blk00000003/blk00000009_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_BCOUT<5>_UNCONNECTED , \NLW_blk00000003/blk00000009_BCOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_BCOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000009_BCOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_BCOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000009_BCOUT<0>_UNCONNECTED }),
    .PCIN({\blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , 
\blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , 
\blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , 
\blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , 
\blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , 
\blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , 
\blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , 
\blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , 
\blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , 
\blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a }),
    .C({\blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , 
\blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , 
\blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , 
\blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , 
\blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , 
\blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , 
\blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , 
\blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , 
\blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , 
\blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a }),
    .P({\NLW_blk00000003/blk00000009_P<47>_UNCONNECTED , \NLW_blk00000003/blk00000009_P<46>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_P<45>_UNCONNECTED , \NLW_blk00000003/blk00000009_P<44>_UNCONNECTED , \NLW_blk00000003/blk00000009_P<43>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_P<42>_UNCONNECTED , \NLW_blk00000003/blk00000009_P<41>_UNCONNECTED , \NLW_blk00000003/blk00000009_P<40>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_P<39>_UNCONNECTED , \NLW_blk00000003/blk00000009_P<38>_UNCONNECTED , \NLW_blk00000003/blk00000009_P<37>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_P<36>_UNCONNECTED , \NLW_blk00000003/blk00000009_P<35>_UNCONNECTED , \NLW_blk00000003/blk00000009_P<34>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_P<33>_UNCONNECTED , \NLW_blk00000003/blk00000009_P<32>_UNCONNECTED , \NLW_blk00000003/blk00000009_P<31>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_P<30>_UNCONNECTED , \NLW_blk00000003/blk00000009_P<29>_UNCONNECTED , \NLW_blk00000003/blk00000009_P<28>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_P<27>_UNCONNECTED , \NLW_blk00000003/blk00000009_P<26>_UNCONNECTED , \NLW_blk00000003/blk00000009_P<25>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_P<24>_UNCONNECTED , \NLW_blk00000003/blk00000009_P<23>_UNCONNECTED , \NLW_blk00000003/blk00000009_P<22>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_P<21>_UNCONNECTED , \NLW_blk00000003/blk00000009_P<20>_UNCONNECTED , \NLW_blk00000003/blk00000009_P<19>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_P<18>_UNCONNECTED , \NLW_blk00000003/blk00000009_P<17>_UNCONNECTED , \blk00000003/sig0000002e , \blk00000003/sig0000002f 
, \blk00000003/sig00000030 , \blk00000003/sig00000031 , \blk00000003/sig00000032 , \blk00000003/sig00000033 , \blk00000003/sig00000034 , 
\blk00000003/sig00000035 , \blk00000003/sig00000036 , \blk00000003/sig00000037 , \blk00000003/sig00000038 , \blk00000003/sig00000039 , 
\blk00000003/sig0000003a , \blk00000003/sig0000003b , \blk00000003/sig0000003c , \blk00000003/sig0000003d , \blk00000003/sig0000003e }),
    .OPMODE({\blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000000a , \blk00000003/sig0000003f , \blk00000003/sig00000021 , 
\blk00000003/sig0000000a , \blk00000003/sig00000023 , \blk00000003/sig00000025 }),
    .D({\blk00000003/sig00000040 , \blk00000003/sig00000040 , \blk00000003/sig00000040 , \blk00000003/sig00000040 , \blk00000003/sig00000040 , 
\blk00000003/sig00000040 , \blk00000003/sig00000040 , \blk00000003/sig00000040 , \blk00000003/sig00000040 , \blk00000003/sig00000040 , 
\blk00000003/sig00000040 , \blk00000003/sig00000041 , \blk00000003/sig00000042 , \blk00000003/sig00000043 , \blk00000003/sig00000044 , 
\blk00000003/sig00000045 , \blk00000003/sig00000046 , \blk00000003/sig00000047 }),
    .PCOUT({\NLW_blk00000003/blk00000009_PCOUT<47>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<46>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<45>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<44>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<43>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<42>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<41>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<40>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<39>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<38>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<37>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<36>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<35>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<34>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<33>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<32>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<31>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<30>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<29>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<28>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<27>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<26>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<25>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<24>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<23>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<22>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<21>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<20>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<19>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<18>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<17>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<15>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<13>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<11>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<9>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<7>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<5>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_PCOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000009_PCOUT<0>_UNCONNECTED }),
    .A({\blk00000003/sig00000048 , \blk00000003/sig00000048 , \blk00000003/sig00000048 , \blk00000003/sig00000048 , \blk00000003/sig00000048 , 
\blk00000003/sig00000048 , \blk00000003/sig00000048 , \blk00000003/sig00000048 , \blk00000003/sig00000048 , \blk00000003/sig00000048 , 
\blk00000003/sig00000048 , \blk00000003/sig00000049 , \blk00000003/sig0000004a , \blk00000003/sig0000004b , \blk00000003/sig0000004c , 
\blk00000003/sig0000004d , \blk00000003/sig0000004e , \blk00000003/sig0000004f }),
    .M({\NLW_blk00000003/blk00000009_M<35>_UNCONNECTED , \NLW_blk00000003/blk00000009_M<34>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_M<33>_UNCONNECTED , \NLW_blk00000003/blk00000009_M<32>_UNCONNECTED , \NLW_blk00000003/blk00000009_M<31>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_M<30>_UNCONNECTED , \NLW_blk00000003/blk00000009_M<29>_UNCONNECTED , \NLW_blk00000003/blk00000009_M<28>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_M<27>_UNCONNECTED , \NLW_blk00000003/blk00000009_M<26>_UNCONNECTED , \NLW_blk00000003/blk00000009_M<25>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_M<24>_UNCONNECTED , \NLW_blk00000003/blk00000009_M<23>_UNCONNECTED , \NLW_blk00000003/blk00000009_M<22>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_M<21>_UNCONNECTED , \NLW_blk00000003/blk00000009_M<20>_UNCONNECTED , \NLW_blk00000003/blk00000009_M<19>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_M<18>_UNCONNECTED , \NLW_blk00000003/blk00000009_M<17>_UNCONNECTED , \NLW_blk00000003/blk00000009_M<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_M<15>_UNCONNECTED , \NLW_blk00000003/blk00000009_M<14>_UNCONNECTED , \NLW_blk00000003/blk00000009_M<13>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_M<12>_UNCONNECTED , \NLW_blk00000003/blk00000009_M<11>_UNCONNECTED , \NLW_blk00000003/blk00000009_M<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_M<9>_UNCONNECTED , \NLW_blk00000003/blk00000009_M<8>_UNCONNECTED , \NLW_blk00000003/blk00000009_M<7>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_M<6>_UNCONNECTED , \NLW_blk00000003/blk00000009_M<5>_UNCONNECTED , \NLW_blk00000003/blk00000009_M<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_M<3>_UNCONNECTED , \NLW_blk00000003/blk00000009_M<2>_UNCONNECTED , \NLW_blk00000003/blk00000009_M<1>_UNCONNECTED , 
\NLW_blk00000003/blk00000009_M<0>_UNCONNECTED })
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000008  (
    .C(clk),
    .D(\blk00000003/sig00000024 ),
    .Q(\blk00000003/sig00000025 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000007  (
    .C(clk),
    .D(\blk00000003/sig00000022 ),
    .Q(\blk00000003/sig00000023 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000006  (
    .C(clk),
    .D(\blk00000003/sig00000020 ),
    .Q(\blk00000003/sig00000021 )
  );
  VCC   \blk00000003/blk00000005  (
    .P(\blk00000003/sig0000001f )
  );
  GND   \blk00000003/blk00000004  (
    .G(\blk00000003/sig0000000a )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000046/blk00000057  (
    .A0(\blk00000003/sig00000098 ),
    .A1(\blk00000003/sig00000097 ),
    .A2(\blk00000003/sig00000096 ),
    .A3(\blk00000003/blk00000046/sig000000fe ),
    .CE(\blk00000003/sig00000065 ),
    .CLK(clk),
    .D(\blk00000003/sig000000af ),
    .Q(\blk00000003/blk00000046/sig00000106 ),
    .Q15(\NLW_blk00000003/blk00000046/blk00000057_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000046/blk00000056  (
    .A0(\blk00000003/sig00000098 ),
    .A1(\blk00000003/sig00000097 ),
    .A2(\blk00000003/sig00000096 ),
    .A3(\blk00000003/blk00000046/sig000000fe ),
    .CE(\blk00000003/sig00000065 ),
    .CLK(clk),
    .D(\blk00000003/sig000000b0 ),
    .Q(\blk00000003/blk00000046/sig00000105 ),
    .Q15(\NLW_blk00000003/blk00000046/blk00000056_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000046/blk00000055  (
    .A0(\blk00000003/sig00000098 ),
    .A1(\blk00000003/sig00000097 ),
    .A2(\blk00000003/sig00000096 ),
    .A3(\blk00000003/blk00000046/sig000000fe ),
    .CE(\blk00000003/sig00000065 ),
    .CLK(clk),
    .D(\blk00000003/sig000000b1 ),
    .Q(\blk00000003/blk00000046/sig00000104 ),
    .Q15(\NLW_blk00000003/blk00000046/blk00000055_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000046/blk00000054  (
    .A0(\blk00000003/sig00000098 ),
    .A1(\blk00000003/sig00000097 ),
    .A2(\blk00000003/sig00000096 ),
    .A3(\blk00000003/blk00000046/sig000000fe ),
    .CE(\blk00000003/sig00000065 ),
    .CLK(clk),
    .D(\blk00000003/sig000000b2 ),
    .Q(\blk00000003/blk00000046/sig00000103 ),
    .Q15(\NLW_blk00000003/blk00000046/blk00000054_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000046/blk00000053  (
    .A0(\blk00000003/sig00000098 ),
    .A1(\blk00000003/sig00000097 ),
    .A2(\blk00000003/sig00000096 ),
    .A3(\blk00000003/blk00000046/sig000000fe ),
    .CE(\blk00000003/sig00000065 ),
    .CLK(clk),
    .D(\blk00000003/sig000000b3 ),
    .Q(\blk00000003/blk00000046/sig00000102 ),
    .Q15(\NLW_blk00000003/blk00000046/blk00000053_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000046/blk00000052  (
    .A0(\blk00000003/sig00000098 ),
    .A1(\blk00000003/sig00000097 ),
    .A2(\blk00000003/sig00000096 ),
    .A3(\blk00000003/blk00000046/sig000000fe ),
    .CE(\blk00000003/sig00000065 ),
    .CLK(clk),
    .D(\blk00000003/sig000000b4 ),
    .Q(\blk00000003/blk00000046/sig00000101 ),
    .Q15(\NLW_blk00000003/blk00000046/blk00000052_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000046/blk00000051  (
    .A0(\blk00000003/sig00000098 ),
    .A1(\blk00000003/sig00000097 ),
    .A2(\blk00000003/sig00000096 ),
    .A3(\blk00000003/blk00000046/sig000000fe ),
    .CE(\blk00000003/sig00000065 ),
    .CLK(clk),
    .D(\blk00000003/sig000000b5 ),
    .Q(\blk00000003/blk00000046/sig00000100 ),
    .Q15(\NLW_blk00000003/blk00000046/blk00000051_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000046/blk00000050  (
    .A0(\blk00000003/sig00000098 ),
    .A1(\blk00000003/sig00000097 ),
    .A2(\blk00000003/sig00000096 ),
    .A3(\blk00000003/blk00000046/sig000000fe ),
    .CE(\blk00000003/sig00000065 ),
    .CLK(clk),
    .D(\blk00000003/sig000000b6 ),
    .Q(\blk00000003/blk00000046/sig000000ff ),
    .Q15(\NLW_blk00000003/blk00000046/blk00000050_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000046/blk0000004f  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/blk00000046/sig00000106 ),
    .Q(\blk00000003/sig00000040 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000046/blk0000004e  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/blk00000046/sig00000105 ),
    .Q(\blk00000003/sig00000041 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000046/blk0000004d  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/blk00000046/sig00000104 ),
    .Q(\blk00000003/sig00000042 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000046/blk0000004c  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/blk00000046/sig00000103 ),
    .Q(\blk00000003/sig00000043 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000046/blk0000004b  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/blk00000046/sig00000102 ),
    .Q(\blk00000003/sig00000044 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000046/blk0000004a  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/blk00000046/sig00000101 ),
    .Q(\blk00000003/sig00000045 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000046/blk00000049  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/blk00000046/sig00000100 ),
    .Q(\blk00000003/sig00000046 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000046/blk00000048  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/blk00000046/sig000000ff ),
    .Q(\blk00000003/sig00000047 )
  );
  GND   \blk00000003/blk00000046/blk00000047  (
    .G(\blk00000003/blk00000046/sig000000fe )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000058/blk00000069  (
    .A0(\blk00000003/sig000000a3 ),
    .A1(\blk00000003/sig000000a2 ),
    .A2(\blk00000003/sig000000a1 ),
    .A3(\blk00000003/blk00000058/sig0000011d ),
    .CE(\blk00000003/sig0000005d ),
    .CLK(clk),
    .D(\blk00000003/sig000000b7 ),
    .Q(\blk00000003/blk00000058/sig00000125 ),
    .Q15(\NLW_blk00000003/blk00000058/blk00000069_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000058/blk00000068  (
    .A0(\blk00000003/sig000000a3 ),
    .A1(\blk00000003/sig000000a2 ),
    .A2(\blk00000003/sig000000a1 ),
    .A3(\blk00000003/blk00000058/sig0000011d ),
    .CE(\blk00000003/sig0000005d ),
    .CLK(clk),
    .D(\blk00000003/sig000000b8 ),
    .Q(\blk00000003/blk00000058/sig00000124 ),
    .Q15(\NLW_blk00000003/blk00000058/blk00000068_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000058/blk00000067  (
    .A0(\blk00000003/sig000000a3 ),
    .A1(\blk00000003/sig000000a2 ),
    .A2(\blk00000003/sig000000a1 ),
    .A3(\blk00000003/blk00000058/sig0000011d ),
    .CE(\blk00000003/sig0000005d ),
    .CLK(clk),
    .D(\blk00000003/sig000000b9 ),
    .Q(\blk00000003/blk00000058/sig00000123 ),
    .Q15(\NLW_blk00000003/blk00000058/blk00000067_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000058/blk00000066  (
    .A0(\blk00000003/sig000000a3 ),
    .A1(\blk00000003/sig000000a2 ),
    .A2(\blk00000003/sig000000a1 ),
    .A3(\blk00000003/blk00000058/sig0000011d ),
    .CE(\blk00000003/sig0000005d ),
    .CLK(clk),
    .D(\blk00000003/sig000000ba ),
    .Q(\blk00000003/blk00000058/sig00000122 ),
    .Q15(\NLW_blk00000003/blk00000058/blk00000066_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000058/blk00000065  (
    .A0(\blk00000003/sig000000a3 ),
    .A1(\blk00000003/sig000000a2 ),
    .A2(\blk00000003/sig000000a1 ),
    .A3(\blk00000003/blk00000058/sig0000011d ),
    .CE(\blk00000003/sig0000005d ),
    .CLK(clk),
    .D(\blk00000003/sig000000bb ),
    .Q(\blk00000003/blk00000058/sig00000121 ),
    .Q15(\NLW_blk00000003/blk00000058/blk00000065_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000058/blk00000064  (
    .A0(\blk00000003/sig000000a3 ),
    .A1(\blk00000003/sig000000a2 ),
    .A2(\blk00000003/sig000000a1 ),
    .A3(\blk00000003/blk00000058/sig0000011d ),
    .CE(\blk00000003/sig0000005d ),
    .CLK(clk),
    .D(\blk00000003/sig000000bc ),
    .Q(\blk00000003/blk00000058/sig00000120 ),
    .Q15(\NLW_blk00000003/blk00000058/blk00000064_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000058/blk00000063  (
    .A0(\blk00000003/sig000000a3 ),
    .A1(\blk00000003/sig000000a2 ),
    .A2(\blk00000003/sig000000a1 ),
    .A3(\blk00000003/blk00000058/sig0000011d ),
    .CE(\blk00000003/sig0000005d ),
    .CLK(clk),
    .D(\blk00000003/sig000000bd ),
    .Q(\blk00000003/blk00000058/sig0000011f ),
    .Q15(\NLW_blk00000003/blk00000058/blk00000063_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000003/blk00000058/blk00000062  (
    .A0(\blk00000003/sig000000a3 ),
    .A1(\blk00000003/sig000000a2 ),
    .A2(\blk00000003/sig000000a1 ),
    .A3(\blk00000003/blk00000058/sig0000011d ),
    .CE(\blk00000003/sig0000005d ),
    .CLK(clk),
    .D(\blk00000003/sig000000be ),
    .Q(\blk00000003/blk00000058/sig0000011e ),
    .Q15(\NLW_blk00000003/blk00000058/blk00000062_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000058/blk00000061  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/blk00000058/sig00000125 ),
    .Q(\blk00000003/sig00000026 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000058/blk00000060  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/blk00000058/sig00000124 ),
    .Q(\blk00000003/sig00000027 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000058/blk0000005f  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/blk00000058/sig00000123 ),
    .Q(\blk00000003/sig00000028 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000058/blk0000005e  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/blk00000058/sig00000122 ),
    .Q(\blk00000003/sig00000029 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000058/blk0000005d  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/blk00000058/sig00000121 ),
    .Q(\blk00000003/sig0000002a )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000058/blk0000005c  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/blk00000058/sig00000120 ),
    .Q(\blk00000003/sig0000002b )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000058/blk0000005b  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/blk00000058/sig0000011f ),
    .Q(\blk00000003/sig0000002c )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000058/blk0000005a  (
    .C(clk),
    .CE(\blk00000003/sig0000001f ),
    .D(\blk00000003/blk00000058/sig0000011e ),
    .Q(\blk00000003/sig0000002d )
  );
  GND   \blk00000003/blk00000058/blk00000059  (
    .G(\blk00000003/blk00000058/sig0000011d )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \blk00000003/blk0000006a/blk0000007a  (
    .I0(\blk00000003/sig000000aa ),
    .I1(\blk00000003/sig000000ab ),
    .I2(\blk00000003/sig000000ae ),
    .O(\blk00000003/blk0000006a/sig00000133 )
  );
  LUT3 #(
    .INIT ( 8'h43 ))
  \blk00000003/blk0000006a/blk00000079  (
    .I0(\blk00000003/sig000000aa ),
    .I1(\blk00000003/sig000000ab ),
    .I2(\blk00000003/sig000000ae ),
    .O(\blk00000003/blk0000006a/sig00000137 )
  );
  LUT3 #(
    .INIT ( 8'h07 ))
  \blk00000003/blk0000006a/blk00000078  (
    .I0(\blk00000003/sig000000aa ),
    .I1(\blk00000003/sig000000ab ),
    .I2(\blk00000003/sig000000ae ),
    .O(\blk00000003/blk0000006a/sig00000136 )
  );
  LUT3 #(
    .INIT ( 8'h09 ))
  \blk00000003/blk0000006a/blk00000077  (
    .I0(\blk00000003/sig000000aa ),
    .I1(\blk00000003/sig000000ae ),
    .I2(\blk00000003/sig000000ab ),
    .O(\blk00000003/blk0000006a/sig00000138 )
  );
  LUT3 #(
    .INIT ( 8'h41 ))
  \blk00000003/blk0000006a/blk00000076  (
    .I0(\blk00000003/sig000000aa ),
    .I1(\blk00000003/sig000000ae ),
    .I2(\blk00000003/sig000000ab ),
    .O(\blk00000003/blk0000006a/sig00000134 )
  );
  LUT3 #(
    .INIT ( 8'h06 ))
  \blk00000003/blk0000006a/blk00000075  (
    .I0(\blk00000003/sig000000aa ),
    .I1(\blk00000003/sig000000ab ),
    .I2(\blk00000003/sig000000ae ),
    .O(\blk00000003/blk0000006a/sig00000132 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \blk00000003/blk0000006a/blk00000074  (
    .I0(\blk00000003/sig000000aa ),
    .I1(\blk00000003/sig000000ab ),
    .I2(\blk00000003/sig000000ae ),
    .O(\blk00000003/blk0000006a/sig00000139 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000003/blk0000006a/blk00000073  (
    .I0(\blk00000003/sig000000ae ),
    .I1(\blk00000003/sig000000ab ),
    .O(\blk00000003/blk0000006a/sig00000135 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000006a/blk00000072  (
    .C(clk),
    .D(\blk00000003/blk0000006a/sig00000139 ),
    .Q(\blk00000003/sig00000048 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000006a/blk00000071  (
    .C(clk),
    .D(\blk00000003/blk0000006a/sig00000138 ),
    .Q(\blk00000003/sig00000049 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000006a/blk00000070  (
    .C(clk),
    .D(\blk00000003/blk0000006a/sig00000137 ),
    .Q(\blk00000003/sig0000004a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000006a/blk0000006f  (
    .C(clk),
    .D(\blk00000003/blk0000006a/sig00000136 ),
    .Q(\blk00000003/sig0000004b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000006a/blk0000006e  (
    .C(clk),
    .D(\blk00000003/blk0000006a/sig00000135 ),
    .Q(\blk00000003/sig0000004c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000006a/blk0000006d  (
    .C(clk),
    .D(\blk00000003/blk0000006a/sig00000134 ),
    .Q(\blk00000003/sig0000004d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000006a/blk0000006c  (
    .C(clk),
    .D(\blk00000003/blk0000006a/sig00000133 ),
    .Q(\blk00000003/sig0000004e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000006a/blk0000006b  (
    .C(clk),
    .D(\blk00000003/blk0000006a/sig00000132 ),
    .Q(\blk00000003/sig0000004f )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
