module  BCLA_ADD_32(sum,c_out,a,b,c_in);
  output [31:0] sum;
  output c_out;
  input [31:0] a,b;
  input c_in;

  wire p0,g0,p1,g1;
  wire c16,c_out;
  
  BCLA_ADD_16 BCLA_ADD_16_0(sum[15:0],g0,p0,a[15:0],b[15:0],c_in);
  BCLA_ADD_16 BCLA_ADD_16_1(sum[31:16],g1,p1,a[31:16],b[31:16],c16);

  assign c16=g0 | (p0 & c_in);
  assign c_out=g1 | (p1 & g0) | (p1 & p0 & c_in);

endmodule