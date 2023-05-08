//sel_cyc=0 and sel_rs=0,write in outside input regin, 1
//sel_cyc=1 and sel_rs=0,shift right cyclic 16bits,
//sel_rs=1,shift right 1bit,the most left bit come from outside input bit256.
//add set 1 function.2016.10.14
module  MINV_REG_X1(regout,bit256,regin,clk,we,sel_cyc,sel_rs,set);
  output [31:0] regout;
  input [31:0] regin;
  input  clk,we,sel_cyc,sel_rs,bit256,set;
  wire [31:0] muxout;        

  //sel_cyc=0,select regin;sel_cyc=1,select regout.
  MUX21_32  MUX21_32(muxout,sel_cyc,regin,regout);
  
  //sel_rs=0,select muxout;sel_rs=1,select right shift 1bit.
  RR_SHI_REG_MDY_SET  RR_SHI_REG_MDY_SET(regout,bit256,muxout,clk,we,sel_rs,set);
endmodule