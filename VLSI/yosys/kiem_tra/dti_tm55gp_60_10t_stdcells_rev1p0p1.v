/*
   Copyright (C) 2000-2023 Dolphin Technology, Inc.
   This verilog is proprietary and confidential information of
   Dolphin Technology, Inc. and can only be used or viewed
   under license or with written permission from Dolphin Technology, Inc.
*/

`celldefine
module dti_55g_10t_and2x1 (Z, A, B);
output Z;
input  A, B;

`ifdef NEGDEL
  `ifdef RECREM
  dti_and2 xdti_55g_10t_and2 (Z, A, B);
  `else
    dti_and2 xdti_55g_10t_and2 (Z, A, B);
  `endif
`else
  dti_and2 xdti_55g_10t_and2 (Z, A, B);
`endif

specify 

endspecify 

endmodule
`endcelldefine


`celldefine
module dti_55g_10t_and3x1 (Z, A, B, C);
output Z;
input  A, B, C;

`ifdef NEGDEL
  `ifdef RECREM
  dti_and3 xdti_55g_10t_and3 (Z, A, B, C);
  `else
    dti_and3 xdti_55g_10t_and3 (Z, A, B, C);
  `endif
`else
  dti_and3 xdti_55g_10t_and3 (Z, A, B, C);
`endif

specify 

endspecify 

endmodule
`endcelldefine


`celldefine
module dti_55g_10t_bufx1 (Z, A);
output Z;
input  A;

`ifdef NEGDEL
  `ifdef RECREM
  dti_buf xdti_55g_10t_buf (Z, A);
  `else
    dti_buf xdti_55g_10t_buf (Z, A);
  `endif
`else
  dti_buf xdti_55g_10t_buf (Z, A);
`endif

specify 

endspecify 

endmodule
`endcelldefine


`celldefine
module dti_55g_10t_invx1 (Z, A);
output Z;
input  A;

`ifdef NEGDEL
  `ifdef RECREM
  dti_inv xdti_55g_10t_inv (Z, A);
  `else
    dti_inv xdti_55g_10t_inv (Z, A);
  `endif
`else
  dti_inv xdti_55g_10t_inv (Z, A);
`endif

specify 

endspecify 

endmodule
`endcelldefine


`celldefine
module dti_55g_10t_lqx1 (Q, CP, D);
output Q;
input  CP, D;
reg notifier;

`ifdef NEGDEL
  `ifdef RECREM
  dti_lq xdti_55g_10t_lq (Q, dCP, dD, notifier);
  `else
    dti_lq xdti_55g_10t_lq (Q, CP, D, notifier);
  `endif
`else
  dti_lq xdti_55g_10t_lq (Q, CP, D, notifier);
`endif

specify 

endspecify 

endmodule
`endcelldefine


`celldefine
module dti_55g_10t_nand2x1 (Z, A, B);
output Z;
input  A, B;

`ifdef NEGDEL
  `ifdef RECREM
  dti_nand2 xdti_55g_10t_nand2 (Z, A, B);
  `else
    dti_nand2 xdti_55g_10t_nand2 (Z, A, B);
  `endif
`else
  dti_nand2 xdti_55g_10t_nand2 (Z, A, B);
`endif

specify 

endspecify 

endmodule
`endcelldefine


`celldefine
module dti_55g_10t_nand3x1 (Z, A, B, C);
output Z;
input  A, B, C;

`ifdef NEGDEL
  `ifdef RECREM
  dti_nand3 xdti_55g_10t_nand3 (Z, A, B, C);
  `else
    dti_nand3 xdti_55g_10t_nand3 (Z, A, B, C);
  `endif
`else
  dti_nand3 xdti_55g_10t_nand3 (Z, A, B, C);
`endif

specify 

endspecify 

endmodule
`endcelldefine


`celldefine
module dti_55g_10t_nor2x1 (Z, A, B);
output Z;
input  A, B;

`ifdef NEGDEL
  `ifdef RECREM
  dti_nor2 xdti_55g_10t_nor2 (Z, A, B);
  `else
    dti_nor2 xdti_55g_10t_nor2 (Z, A, B);
  `endif
`else
  dti_nor2 xdti_55g_10t_nor2 (Z, A, B);
`endif

specify 

endspecify 

endmodule
`endcelldefine


`celldefine
module dti_55g_10t_nor3x1 (Z, A, B, C);
output Z;
input  A, B, C;

`ifdef NEGDEL
  `ifdef RECREM
  dti_nor3 xdti_55g_10t_nor3 (Z, A, B, C);
  `else
    dti_nor3 xdti_55g_10t_nor3 (Z, A, B, C);
  `endif
`else
  dti_nor3 xdti_55g_10t_nor3 (Z, A, B, C);
`endif

specify 

endspecify 

endmodule
`endcelldefine


`celldefine
module dti_55g_10t_or2x1 (Z, A, B);
output Z;
input  A, B;

`ifdef NEGDEL
  `ifdef RECREM
  dti_or2 xdti_55g_10t_or2 (Z, A, B);
  `else
    dti_or2 xdti_55g_10t_or2 (Z, A, B);
  `endif
`else
  dti_or2 xdti_55g_10t_or2 (Z, A, B);
`endif

specify 

endspecify 

endmodule
`endcelldefine


`celldefine
module dti_55g_10t_or3x1 (Z, A, B, C);
output Z;
input  A, B, C;

`ifdef NEGDEL
  `ifdef RECREM
  dti_or3 xdti_55g_10t_or3 (Z, A, B, C);
  `else
    dti_or3 xdti_55g_10t_or3 (Z, A, B, C);
  `endif
`else
  dti_or3 xdti_55g_10t_or3 (Z, A, B, C);
`endif

specify 

endspecify 

endmodule
`endcelldefine


`celldefine
module dti_55g_10t_xor2x1 (Z, A, B);
output Z;
input  A, B;

`ifdef NEGDEL
  `ifdef RECREM
  dti_xor2 xdti_55g_10t_xor2 (Z, A, B);
  `else
    dti_xor2 xdti_55g_10t_xor2 (Z, A, B);
  `endif
`else
  dti_xor2 xdti_55g_10t_xor2 (Z, A, B);
`endif

specify 

endspecify 

endmodule
`endcelldefine


`celldefine
module dti_55g_10t_ffqbcka01x1 (Q, CK, D, RN);
output Q;
input  CK, D, RN;
wire SandR;
wire SandRandCE;
supply1 dCE;
supply1 CE;
supply1 dSN;
supply1 SN;
reg notifier;

`ifdef NEGDEL
  `ifdef RECREM
  dti_ffqbcka01 xdti_55g_10t_ffqbcka01 (Q, dCK, dD, dRN, notifier);
  `else
    dti_ffqbcka01 xdti_55g_10t_ffqbcka01 (Q, CK, D, RN, notifier);
  `endif
`else
  dti_ffqbcka01 xdti_55g_10t_ffqbcka01 (Q, CK, D, RN, notifier);
`endif

`ifdef NEGDEL
  `ifdef RECREM
   and (SandR, dSN, dRN);
   and (SandRandCE, SandR, dCE);

  `else
   and (SandR, SN, RN);
   and (SandRandCE, SandR, CE);

  `endif
`else
  and (SandR, SN, RN);
  and (SandRandCE, SandR, CE);

`endif
specify 

endspecify 

endmodule
`endcelldefine


//BEGIN GENERIC CELLS

module dti_and2 (Z, A, B);
output Z;
input  A, B;

  and (Z, A, B);

endmodule


`celldefine
module dti_flop_asyn_soff_top (Q, SO, CK, CE, D, SD, SE, RN, SN, notifier);
output Q;
output SO;
input  CK, D, SD, SE, RN, CE, SN;
input notifier;
wire CE_D;
wire m;
  

  dti_udp_mux g0 (CE_D, Q, D, CE);
  dti_udp_mux g1 (m, CE_D, SD, SE);
  dti_udp_dff g2 (Q, CK, m, RN, SE, SN, notifier);
  buf g3 (SO, Q);


endmodule 
`endcelldefine


`celldefine
module dti_flop_syn_soff_top (Q, SO, CK, CE, D, SD, SE, RN, SN, notifier);
output Q;
output SO;
input  CK, D, SD, SE, RN, CE, SN;
input notifier;
wire CE_D; 
wire SN_D;
wire RN_SN_D;
wire m;

  dti_udp_mux g0 (CE_D, Q, D, CE);
  dti_udp_mux g1 (SN_D, 1'b1, CE_D, SN);
  dti_udp_mux g2 (RN_SN_D, 1'b0, SN_D, RN);
  dti_udp_mux g3 (m, RN_SN_D, SD, SE); 
  dti_udp_dff g4 (Q, CK, m, 1'b1, 1'b1, 1'b1, notifier);
  buf g5 (SO, Q);
  

endmodule
`endcelldefine

`celldefine
module dti_flop_asyn_soffa_sn_top (Q, SO, CK, CE, D, SD, SE, RN, SN, notifier);
output Q;
output SO;
input  CK, D, SD, SE, RN, CE, SN;
input notifier;
wire CE_D;
wire m;


  dti_udp_mux g0 (CE_D, Q, D, CE);
  dti_udp_mux g1 (m, CE_D, SD, SE);
  dti_udp_dffa_sn g2 (Q, CK, m, RN, SN, notifier);
  buf g3 (SO, Q);


endmodule
`endcelldefine


`celldefine
module dti_flop_asyn_soffa_top (Q, SO, CK, CE, D, SD, SE, RN, SN, notifier);
output Q;
output SO;
input  CK, D, SD, SE, RN, CE, SN;
input notifier;
wire CE_D;
wire m;


  dti_udp_mux g0 (CE_D, Q, D, CE);
  dti_udp_mux g1 (m, CE_D, SD, SE);
  dti_udp_dffa g2 (Q, CK, m, RN, SN, notifier);
  buf g3 (SO, Q);


endmodule
`endcelldefine

`celldefine
module dti_flop_syn_soeff_top (Q, SO, CK, CE, D, SD, SE, RN, SN,  notifier);
output Q;
output SO;
input  CK, D, SD, SE, RN, CE, SN;
input notifier;
wire CE_D; 
wire SN_D;
wire RN_SN_D;
wire m;

  dti_udp_mux g0 (CE_D, Q, D, CE);
  dti_udp_mux g1 (SN_D, 1'b1, CE_D, SN);
  dti_udp_mux g2 (RN_SN_D, 1'b0, SN_D, RN);
  dti_udp_mux g3 (m, RN_SN_D, SD, SE); 
  dti_udp_dff g4 (Q, CK, m, 1'b1, 1'b1, 1'b1, notifier);
  and g5 (SO, Q, SE);
  

endmodule
`endcelldefine

`celldefine
module dti_flop_asyn_soeffa_sn_top (Q, SO, CK, CE, D, SD, SE, RN, SN, notifier);
output Q;
output SO;
input  CK, D, SD, SE, RN, CE, SN;
input notifier;
wire CE_D;
wire m;


  dti_udp_mux g0 (CE_D, Q, D, CE);
  dti_udp_mux g1 (m, CE_D, SD, SE);
  dti_udp_dffa_sn g2 (Q, CK, m, RN, SN, notifier);
  and g5 (SO, Q, SE);


endmodule
`endcelldefine


`celldefine
module dti_flop_asyn_soeffa_top (Q, SO, CK, CE, D, SD, SE, RN, SN, notifier);
output Q;
output SO;
input  CK, D, SD, SE, RN, CE, SN;
input notifier;
wire CE_D;
wire m;


  dti_udp_mux g0 (CE_D, Q, D, CE);
  dti_udp_mux g1 (m, CE_D, SD, SE);
  dti_udp_dffa g2 (Q, CK, m, RN, SN, notifier);
  and g5 (SO, Q, SE);


endmodule
`endcelldefine

`celldefine
module dti_flop_asyn_soeff_top (Q, SO, CK, CE, D, SD, SE, RN, SN,  notifier);
output Q;
output SO;
input  CK, D, SD, SE, RN, CE, SN ;
input notifier;
wire CE_D;
wire m;
  

  dti_udp_mux g0 (CE_D, Q, D, CE);
  dti_udp_mux g1 (m, CE_D, SD, SE);
  dti_udp_dff g2 (Q, CK, m, RN, SE, SN, notifier);
  and g5 (SO, Q, SE);


endmodule 
`endcelldefine


`celldefine
module dti_flop_syn_soeeff_top (Q, SO, CK, CE, D, SD, SE, SOE, RN, SN,  notifier);
output Q;
output SO;
input  CK, D, SD, SE, RN, CE, SN, SOE;
input notifier;
wire CE_D; 
wire SN_D;
wire RN_SN_D;
wire m;

  dti_udp_mux g0 (CE_D, Q, D, CE);
  dti_udp_mux g1 (SN_D, 1'b1, CE_D, SN);
  dti_udp_mux g2 (RN_SN_D, 1'b0, SN_D, RN);
  dti_udp_mux g3 (m, RN_SN_D, SD, SE); 
  dti_udp_dff g4 (Q, CK, m, 1'b1, 1'b1, 1'b1, notifier);
  and g5 (SO, Q, SOE);
  

endmodule
`endcelldefine

`celldefine
module dti_flop_asyn_soeeffa_top (Q, SO, CK, CE, D, SD, SE, SOE, RN, SN, notifier);
output Q;
output SO;
input  CK, D, SD, SE, RN, CE, SN, SOE;
input notifier;
wire CE_D;
wire m;


  dti_udp_mux g0 (CE_D, Q, D, CE);
  dti_udp_mux g1 (m, CE_D, SD, SE);
  dti_udp_dffa g2 (Q, CK, m, RN, SN, notifier);
  and g5 (SO, Q, SOE);


endmodule
`endcelldefine

`celldefine
module dti_flop_asyn_soeeff_top (Q, SO, CK, CE, D, SD, SE, SOE, RN, SN,  notifier);
output Q;
output SO;
input  CK, D, SD, SE, RN, CE, SN , SOE;
input notifier;
wire CE_D;
wire m;
  

  dti_udp_mux g0 (CE_D, Q, D, CE);
  dti_udp_mux g1 (m, CE_D, SD, SE);
  dti_udp_dff g2 (Q, CK, m, RN, SE, SN, notifier);
  and g5 (SO, Q, SOE);


endmodule 
`endcelldefine

primitive dti_udp_dff_sn (q, clk, m, rn, se, sn, notifier);
output q;
reg q;
input clk, m,  rn, se, sn, notifier;

table
//      clk     m       rn      se      sn      notifier                state           q
         ?      ?       ?       0       0          ?            :        ?      :       1;   // se = 0, rn = 0, so output = 0, edge on ck makes no difference
         ?      ?       *       0       1          ?            :        0      :       0;   // rn changed but previous state was 0 so output = 0
         ?      ?       1       0       *          ?            :        1      :       1;   // sn changed but previous state was 1 so output = 1
         r      0       1       0       1          ?            :        ?      :       0;   // rising edge of clock, m = 0 , so q = 0
         r      1       1       0       1          ?            :        ?      :       1;   // rising edge of clock, m = 1 , so q = 1
         r      0       ?       1       ?          ?            :        ?      :       0;   // se = 1 , m = 0, so output = 0
         r      1       ?       1       ?          ?            :        ?      :       1;   // se = 1 , m = 1, so output = 1
       //f      ?       ?       ?       ?          ?            :        ?      :       -;   // falling edge of clock, so no change in output
         b      *       ?       ?       ?          ?            :        ?      :       -;   // maintain state
         ?      ?       ?       ?       ?          *            :        ?      :       x;   // final case
        (?0)    ?       ?       ?       ?          ?            :        ?      :       -;   // falling edge of clock, so no change in output
        (1x)    ?       ?       ?       ?          ?            :        ?      :       -;   // falling edge of clock, so no change in output
        (0x)    0       ?       1       1          ?            :        0      :       -;   // maintain state for clock going to x for input same as previous state
        (0x)    1       1       1       ?          ?            :        1      :       -;   // maintain state for clock going to x for input same as previous state
        (?1)    0       ?       ?       1          ?            :        0      :       -;   // maintain state for fake transitions
        (?1)    1       1       ?       ?          ?            :        1      :       -;   // maintain state for fake transitions
         x      *       ?       ?       1          ?            :        0      :       -;   // maintain state for clk=x on certain condition
         x      *       1       ?       ?          ?            :        1      :       -;   // maintain state for clk=x on certain condition
         ?      ?       *       1       ?          ?            :        ?      :       -;   // se = 1, edge on rn makes no difference
         ?      ?       ?       1       *          ?            :        ?      :       -;   // se = 1, edge on sn makes no difference
         ?      *       ?       1       ?          ?            :        ?      :       -;   // se = 1, clock is steady, edge on m  makes no difference
         ?      ?       ?       *       ?          ?            :        ?      :       -;   // edge on se  makes no difference as everything is stable
       //?      ?       1       *       ?          ?            :        1      :       -;   // se = 1, clock is steady, edge on m  makes no difference

endtable
endprimitive


primitive dti_udp_dff (q, clk, m, rn, se, sn, notifier);
output q;
reg q;
input clk, m,  rn, se, sn, notifier;

table
//      clk     m       rn      se      sn      notifier                state           q
	 ?      ?       0       0       ?          ?            :        ?      :       0;   // se = 0, rn = 0, so output = 0, edge on ck makes no difference 
	 ?      ?       *       0       1          ?            :        0      :       0;   // rn changed but previous state was 0 so output = 0 
         ?      ?       1       0       0          ?            :        ?      :       1;   // se = 0, sn = 0, so output = 1, edge on ck makes no difference 
         ?      ?       1       0       *          ?            :        1      :       1;   // sn changed but previous state was 1 so output = 1 
         r      0       1       0       1          ?            :        ?      :       0;   // rising edge of clock, m = 0 , so q = 0 
         r      1       1       0       1          ?            :        ?      :       1;   // rising edge of clock, m = 1 , so q = 1 
         r      0       ?       1       ?          ?            :        ?      :       0;   // se = 1 , m = 0, so output = 0
         r      1       ?       1       ?          ?            :        ?      :       1;   // se = 1 , m = 1, so output = 1
         //f      ?       ?       ?       ?          ?            :        ?      :       -;   // falling edge of clock, so no change in output 
         b      *       ?       ?       ?          ?            :        ?      :       -;   // maintain state
         ?      ?       ?       ?       ?          *            :        ?      :       x;   // final case 
        (?0)    ?       ?       ?       ?          ?            :        ?      :       -;   // falling edge of clock, so no change in output 
        (1x)    ?       ?       ?       ?          ?            :        ?      :       -;   // falling edge of clock, so no change in output 
        (0x)    0       ?       1	1          ?            :        0      :       -;   // maintain state for clock going to x for input same as previous state 
        (0x)    1       1       1	?          ?            :        1      :       -;   // maintain state for clock going to x for input same as previous state
        (?1)    0       ?       ?       1          ?            :        0      :       -;   // maintain state for fake transitions 
        (?1)    1       1       ?       ?          ?            :        1      :       -;   // maintain state for fake transitions 
         x      *       ?       ?       1          ?            :        0      :       -;   // maintain state for clk=x on certain condition 
         x      *       1       ?       ?          ?            :        1      :       -;   // maintain state for clk=x on certain condition 
         ?      ?       *       1       ?          ?            :        ?      :       -;   // se = 1, edge on rn makes no difference 
         ?      ?       ?       1       *          ?            :        ?      :       -;   // se = 1, edge on sn makes no difference 
         ?      *       ?       1       ?          ?            :        ?      :       -;   // se = 1, clock is steady, edge on m  makes no difference 
         ?      ?       ?       *       ?          ?            :        ?      :       -;   // edge on se  makes no difference as everything is stable
         //?      ?       1       *       ?          ?            :        1      :       -;   // se = 1, clock is steady, edge on m  makes no difference 
endtable
endprimitive

primitive dti_udp_dffa (q, clk, m, rn, sn, notifier);
output q;
reg q;
input clk, m,  rn, sn, notifier;

table
//      clk     m       rn      sn      notifier                state           q
         ?      ?       0       ?          ?            :        ?      :       0;   // rn = 0, so edge on sn doesnt make a difference, output = 0 
	 ?      ?       *       1          ?            :        0      :       0;   // rn changed but previous state was 0 so output = 0 
         ?      ?       1       0          ?            :        ?      :       1;   // sn = 0, so edge on ck doesnt make a difference, output = 0 
         ?      ?       1       *          ?            :        1      :       1;   // sn changed but previous state was 1 so output = 1 
         r      0       1       1          ?            :        ?      :       0;   // rising edge of clock, m = 0 , so q = 0 
         r      1       1       1          ?            :        ?      :       1;   // rising edge of clock, m = 1 , so q = 1 
         //f      ?       ?       ?          ?            :        ?      :       -;   // falling edge of clock, so no change in output 
         b      *       ?       ?          ?            :        ?      :       -;   // maintain state
         ?      ?       ?       ?          *            :        ?      :       x;   // final case 
        (?0)    ?       ?       ?          ?            :        ?      :       -;   // falling edge of clock, so no change in output 
        (1x)    ?       ?       ?          ?            :        ?      :       -;   // falling edge of clock, so no change in output 
        (0x)    0       ?       1          ?            :        0      :       -;   // maintain state for clock going to x for input same as previous state
        (0x)    1       1       ?          ?            :        1      :       -;   // maintain state for clock going to x for input same as previous state
        (?1)    0       ?       1          ?            :        0      :       -;   // maintain state for fake transitions 
        (?1)    1       1       ?          ?            :        1      :       -;   // maintain state for fake transitions 
         x      *       ?       1          ?            :        0      :       -;   // maintain state for clk=x on certain condition 
         x      *       1       ?          ?            :        1      :       -;   // maintain state for clk=x on certain condition 
endtable
endprimitive

primitive dti_udp_dffa_sn (q, clk, m, rn, sn, notifier);
output q;
reg q;
input clk, m,  rn, sn, notifier;

table
         //clk     m       rn      sn      notifier                state           q
         ?      ?       ?       0          ?            :        ?      :       1;   // sn = 0, so edge on rn doesnt make a difference, output = 1
         ?      ?       0       1          ?            :        ?      :       0;   // rn = 0, sn = 1, so output = 0
         ?      ?       1       *          ?            :        1      :       1;   // sn changed but previous state was 1 so output = 1
         r      0       1       1          ?            :        ?      :       0;   // rising edge of clock, m = 0 , so q = 0
         r      1       1       1          ?            :        ?      :       1;   // rising edge of clock, m = 1 , so q = 1
         //f      ?       ?       ?          ?            :        ?      :       -;   // falling edge of clock, so no change in output
         b      *       ?       ?          ?            :        ?      :       -;   // maintain state
         ?      ?       ?       ?          *            :        ?      :       x;   // final case
        (?0)    ?       ?       ?          ?            :        ?      :       -;   // falling edge of clock, so no change in output
        (1x)    ?       ?       ?          ?            :        ?      :       -;   // falling edge of clock, so no change in output
        (0x)    0       ?       1          ?            :        0      :       -;   // maintain state for clock going to x for input same as previous state
        (0x)    1       1       ?          ?            :        1      :       -;   // maintain state for clock going to x for input same as previous state
        (?1)    0       ?       1          ?            :        0      :       -;   // maintain state for fake transitions
        (?1)    1       1       ?          ?            :        1      :       -;   // maintain state for fake transitions
         x      *       ?       1          ?            :        0      :       -;   // maintain state for clk=x on certain condition
         x      *       1       ?          ?            :        1      :       -;   // maintain state for clk=x on certain condition

endtable
endprimitive

primitive dti_udp_mux (z, a, b, sel);
output z;
input a, b, sel;

table
//	a	b	sel	:	z
	0	?	0	:	0;
	1	?	0	:	1;
	?	0	1	:	0;
	?	1	1	:	1;
	0 	0	x	:	0;
	1 	1	x	:	1;
endtable
endprimitive	


`celldefine
module dti_flop_asyn_sff_top (Q, CK, CE, D, SD, SE, RN, SN, notifier);
output Q;
input  CK, D, SD, SE, RN, CE, SN;
input notifier;
wire CE_D;
wire m;
  

  dti_udp_mux g0 (CE_D, Q, D, CE);
  dti_udp_mux g1 (m, CE_D, SD, SE);
  dti_udp_dff g2 (Q, CK, m, RN, SE, SN, notifier);


endmodule 
`endcelldefine


`celldefine
module dti_flop_syn_sff_top (Q, CK, CE, D, SD, SE, RN, SN, notifier);
output Q;
input  CK, D, SD, SE, RN, CE, SN;
input notifier;
wire CE_D; 
wire SN_D;
wire RN_SN_D;
wire m;

  dti_udp_mux g0 (CE_D, Q, D, CE);
  dti_udp_mux g1 (SN_D, 1'b1, CE_D, SN);
  dti_udp_mux g2 (RN_SN_D, 1'b0, SN_D, RN);
  dti_udp_mux g3 (m, RN_SN_D, SD, SE); 
  dti_udp_dff g4 (Q, CK, m, 1'b1, 1'b1, 1'b1, notifier);
  

endmodule
`endcelldefine

`celldefine
module dti_flop_asyn_sffa_top (Q, CK, CE, D, SD, SE, RN, SN, notifier);
output Q;
input  CK, D, SD, SE, RN, CE, SN;
input notifier;
wire CE_D;
wire m;


  dti_udp_mux g0 (CE_D, Q, D, CE);
  dti_udp_mux g1 (m, CE_D, SD, SE);
  dti_udp_dffa g2 (Q, CK, m, RN, SN, notifier);


endmodule
`endcelldefine

`celldefine
module dti_flop_asyn_sffa_sn_top (Q, CK, CE, D, SD, SE, RN, SN, notifier);
output Q;
input  CK, D, SD, SE, RN, CE, SN;
input notifier;
wire CE_D;
wire m;


  dti_udp_mux g0 (CE_D, Q, D, CE);
  dti_udp_mux g1 (m, CE_D, SD, SE);
  dti_udp_dffa_sn g2 (Q, CK, m, RN, SN, notifier);


endmodule
`endcelldefine

`celldefine
module dti_flop_asyn_ff_top (Q, CK, CE, D, RN, SN, notifier);
output Q;
input  CK, D, RN, CE, SN;
input notifier;
wire m;
  

  dti_udp_mux g0 (m, Q, D, CE);
  dti_udp_dff g2 (Q, CK, m, RN, 1'b0, SN, notifier);


endmodule 
`endcelldefine

`celldefine
module dti_flop_asyn_ff_sn_top (Q, CK, CE, D, RN, SN, notifier);
output Q;
input  CK, D, RN, CE, SN;
input notifier;
wire m;


  dti_udp_mux g0 (m, Q, D, CE);
  dti_udp_dffa_sn g2 (Q, CK, m, RN, SN, notifier);


endmodule
`endcelldefine


`celldefine
module dti_asyn_latch_top (Q, CK, CE, D, RN, SN, notifier);
output Q;
input  CK, D, RN, CE, SN;
input notifier;
wire m;


  dti_udp_mux g0 (m, Q, D, CE);
  dti_udp_dlat11 g2 (Q, CK, m, RN, SN, notifier);


endmodule
`endcelldefine


`celldefine
module dti_flop_syn_ff_top (Q, CK, CE, D, RN, SN, notifier);
output Q;
input  CK, D, RN, CE, SN;
input notifier;
wire CE_D; 
wire SN_D;
wire m;

  dti_udp_mux g0 (CE_D, Q, D, CE);
  dti_udp_mux g1 (SN_D, 1'b1, CE_D, SN);
  dti_udp_mux g2 (m, 1'b0, SN_D, RN);
  dti_udp_dff g4 (Q, CK, m, 1'b1, 1'b0, 1'b1, notifier);
  

endmodule
`endcelldefine

`celldefine
module dti_latch_top (Q, CP, D,  notifier);
output Q;
input  CP, D;
input notifier;
  

  dti_udp_dlat g0 (Q, CP, D, notifier);


endmodule 
`endcelldefine

primitive dti_udp_dlat (q, clk, m, notifier);
output q;
reg q;
input clk, m, notifier;

table
//     clk     m       notifier                state           q
	0      0          ?            :        ?      :       0;   // clk = 0, data = 0, so output = 0
	0      1          ?            :        ?      :       1;   // clk = 0, data = 1 so output = 1
	1      ?          ?            :        ?      :       -;   // clk = 1, so no change in output 
	?      ?          *            :        ?      :       x;   // cover all condition 
//Now covering clock x condition
	x      0          ?            :        0      :       0;   // removing pessimism 
	x      1          ?            :        1      :       1;   // removing pessimism 

endtable
endprimitive

primitive dti_udp_lqa11 (q, d, cp, rn, sn, notifier);
output q;
reg q;
input d, cp, rn, sn, notifier;
table
// d  cp  rn  sn  n     state q
   1  0   1   ?   ?   : ?  :  1  ; // cp = 0, data = 1 so output = 1
   0  0   ?   1   ?   : ?  :  0  ; // cp = 0, data = 0 so output = 0
   ?  1   1   1   ?   : ?  :  -  ; // no change in output
   ?  ?   ?   0   ?   : ?  :  1  ; // preset to 1
   ?  1   1   *   ?   : 1  :  1  ; 
   1  ?   1   *   ?   : 1  :  1  ;
   1  *   1   ?   ?   : 1  :  1  ;
   ?  ?   0   1   ?   : ?  :  0  ; // reset to 0
   ?  1   *   1   ?   : 0  :  0  ;
   0  ?   *   1   ?   : 0  :  0  ;
   0  *   ?   1   ?   : 0  :  0  ;
   ?  ?   ?   ?   *   : ?  :  x  ; // toggle notifier
endtable
endprimitive

primitive dti_udp_dlat11 (q, cp, d, rn, sn, notifier);


//dti_udp_dlat11 g2 (Q, CK, m, RN, 1'b0, SN, notifier);
output q;
reg q;
input d, cp, rn, sn, notifier;
table
// d  cp  rn  sn  n     state q
   1  0   1   ?   ?   : ?  :  1  ; // cp = 0, data = 1 so output = 1
   0  0   ?   1   ?   : ?  :  0  ; // cp = 0, data = 0 so output = 0
   ?  1   1   1   ?   : ?  :  -  ; // no change in output
   ?  ?   ?   0   ?   : ?  :  1  ; // preset to 1
   ?  1   1   *   ?   : 1  :  1  ;
   1  ?   1   *   ?   : 1  :  1  ;
   1  *   1   ?   ?   : 1  :  1  ;
   ?  ?   0   1   ?   : ?  :  0  ; // reset to 0
   ?  1   *   1   ?   : 0  :  0  ;
   0  ?   *   1   ?   : 0  :  0  ;
   0  *   ?   1   ?   : 0  :  0  ;
   ?  ?   ?   ?   *   : ?  :  x  ; // toggle notifier
endtable
endprimitive

primitive dti_udp_ffqa11 (q, d, ck, rn, sn, notifier);
output q;
input d, ck, rn, sn, notifier;
reg q;
table
//  d   ck  rn  sn  n   s   q
    ?   ?   ?   0   ? : ? : 1 ; // SN dominates RN Sn=0 Q=1
    ?   ?   0   1   ? : ? : 0 ; // RN=0 Q=0
    ?   ?   1   x   ? : 1 : 1 ; // Pessimism reduction
    ?   ?   x   1   ? : 0 : 0 ; // Pessimism reduction
    0   r   ?   1   ? : ? : 0 ; // rising edge of clk d=0 q=0 sn=1 
    1   r   1   ?   ? : ? : 1 ; // rising edge of clk d=1 q=1 rn=1
    0  (0x) ?   1   ? : 0 : - ; // maintain state 
    1  (0x) 1   ?   ? : 1 : - ; 
    0   0   ?   1   ? : 0 : - ; 
    1   0   1   ?   ? : 1 : - ; 
    ?   ? (?1)  1   ? : ? : - ;
    ?   ?   1 (?1)  ? : ? : - ;
    ? (1?)  1   1   ? : ? : - ; // ignore falling edge of clock
    *   ?   1   1   ? : ? : - ; 
    ?   0   1   1   ? : ? : - ; // ignore low-level clock
    ?   ?   ?   ?   * : ? : x ; // timing check violation
endtable
endprimitive

primitive dti_udp_muxd (z, a, b, sel);
output z;
input a, b, sel;

table
//      a       b       sel     :       z
        0       ?       0       :       0;
        1       ?       0       :       1;
        ?       0       1       :       0;
        ?       1       1       :       1;
        0       0       x       :       0;
        1       1       x       :       1;
endtable
endprimitive


module dti_inv (Z, A);
output Z;
input  A;

  not (Z, A);

endmodule


module dti_buf (Z, A);
output Z;
input  A;

  buf (Z, A);

endmodule


module dti_or2 (Z, A, B);
output Z;
input  A, B;

  or (Z, A, B);

endmodule


module dti_ffqbcka01 (Q, CK, D, RN, notifier);
output Q;
input  CK, D, RN;
supply1 CE;
supply1 SN;

input notifier;

dti_flop_asyn_ff_top xdti_ffqbcka01 (Q, CK, CE, D, RN, SN, notifier);


endmodule


module dti_xor2 (Z, A, B);
output Z;
input  A, B;

  xor (Z, A, B);

endmodule


module dti_and3 (Z, A, B, C);
output Z;
input  A, B, C;

  and (Z, A, B, C);

endmodule


module dti_nand2 (Z, A, B);
output Z;
input  A, B;

  nand (Z, A, B);

endmodule


module dti_nor2 (Z, A, B);
output Z;
input  A, B;

  nor (Z, A, B);

endmodule


module dti_or3 (Z, A, B, C);
output Z;
input  A, B, C;

  or (Z, A, B, C);

endmodule


module dti_nand3 (Z, A, B, C);
output Z;
input  A, B, C;

  nand (Z, A, B, C);

endmodule


module dti_nor3 (Z, A, B, C);
output Z;
input  A, B, C;

  nor (Z, A, B, C);

endmodule


module dti_lq (Q, CP, D, notifier);
output Q;
input  CP, D;
wire CP;
wire D;

input notifier;

dti_latch_top xdti_lq (Q, CP, D, notifier);


endmodule


