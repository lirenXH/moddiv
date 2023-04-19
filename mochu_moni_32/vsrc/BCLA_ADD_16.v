//BCD十六位加法器
module  BCLA_ADD_16(sum,c_out,a,b,c_in);
  output [15:0] sum;
  output c_out;
  input [15:0] a,b;
  input c_in;
      
  wire p0,g0,p1,g1,p2,g2,p3,g3;
  wire c4,c8,c12,c_out;
  
  BCLA_ADD_4 BCLA_ADD_4_0(sum[3:0],g0,p0,a[3:0],b[3:0],c_in);
  BCLA_ADD_4 BCLA_ADD_4_1(sum[7:4],g1,p1,a[7:4],b[7:4],c4);
  BCLA_ADD_4 BCLA_ADD_4_2(sum[11:8],g2,p2,a[11:8],b[11:8],c8);
  BCLA_ADD_4 BCLA_ADD_4_3(sum[15:12],g3,p3,a[15:12],b[15:12],c12);  
  
  assign c4=g0 | (p0 & c_in);
  assign c8=g1 | (p1 & g0) | (p1 & p0 & c_in);
  assign c12=g2 | (p2 & g1) | (p2 & p1 & g0) | (p2 & p1 & p0 & c_in);
  assign c_out=g3 | (p3 & g2) | (p3 & p2 & g1) | (p3 & p2 & p1 & g0) | (p3 & p2 & p1 & p0 & c_in); 
endmodule
