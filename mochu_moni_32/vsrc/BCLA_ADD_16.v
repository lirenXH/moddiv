//BCD十六位加法器
module  BCLA_ADD_32(sum,c_out,a,b,c_in);
  output [31:0] sum;
  output c_out;
  input [31:0] a,b;
  input c_in;
      
  wire p0,g0,p1,g1,p2,g2,p3,g3,p4,g4,p5,g5,p6,g6,p7,g7;
  wire c4,c8,c12,c16,c20,c24,c28,c_out;
  
  BCLA_ADD_4 BCLA_ADD_4_0(sum[3:0],g0,p0,a[3:0],b[3:0],c_in);
  BCLA_ADD_4 BCLA_ADD_4_1(sum[7:4],g1,p1,a[7:4],b[7:4],c4);
  BCLA_ADD_4 BCLA_ADD_4_2(sum[11:8],g2,p2,a[11:8],b[11:8],c8);
  BCLA_ADD_4 BCLA_ADD_4_3(sum[15:12],g3,p3,a[15:12],b[15:12],c12);  
  BCLA_ADD_4 BCLA_ADD_4_4(sum[19:16],g4,p4,a[19:16],b[19:16],c16);  
  BCLA_ADD_4 BCLA_ADD_4_5(sum[23:20],g5,p5,a[23:20],b[23:20],c20);  
  BCLA_ADD_4 BCLA_ADD_4_6(sum[27:24],g6,p6,a[27:24],b[27:24],c24);  
  BCLA_ADD_4 BCLA_ADD_4_7(sum[31:28],g7,p7,a[31:28],b[31:28],c28);  
  
  assign c4=g0 | (p0 & c_in);
  assign c8=g1 | (p1 & g0) | (p1 & p0 & c_in);
  assign c12=g2 | (p2 & g1) | (p2 & p1 & g0) | (p2 & p1 & p0 & c_in);
  assign c16=g3 | (p3 & g2) | (p3 & p2 & g1) | (p3 & p2 & p1 & g0) | (p3 & p2 & p1 & p0 & c_in); 
  assign c20=g4 | (p4 & g3) | (p4 & p3 & g2) | (p4 & p3 & p2 & g1) | (p4 & p3 & p2 & p1 & g0) | (p4 & p3 & p2 & p1 & p0 & c_in); 
  assign c24=g5 | (p5 & g4) | (p5 & p4 & g3) | (p5 & p4 & p3 & g2) | (p5 & p4 & p3 & p2 & g1) | (p5 & p4 & p3 & p2 & p1 & g0) | (p5 & p4 & p3 & p2 & p1 & p0 & c_in); 
  assign c28=g6 | (p6 & g5) | (p6 & p5 & g4) | (p6 & p5 & p4 & g3) | (p6 & p5 & p4 & p3 & g2) | (p6 & p5 & p4 & p3 & p2 & g1) | (p6 & p5 & p4 & p3 & p2 & p1 & g0) | (p6 & p5 & p4 & p3 & p2 & p1 & p0 & c_in);
  assign c_out=g7 | (p7 & g6) | (p7 & p6 & g5) | (p7 & p6 & p5 & g4) | (p7 & p6 & p5 & p4 & g3) | (p7 & p6 & p5 & p4 & p3 & g2) | (p7 & p6 & p5 & p4 & p3 & p2 & g1) | (p7 & p6 & p5 & p4 & p3 & p2 & p1 & g0) | (p7 & p6 & p5 & p4 & p3 & p2 & p1 & p0 & c_in);

endmodule
