//sel_cyc=0 and sel_rs=0,write in outside input regin,
//sel_cyc=1 and sel_rs=0,shift right cyclic 16bits,
//sel_rs=1,shift right 1bit,the most left bit come from outside input bit256.
//add clr 0 function.2016.10.14
module  MINV_REG_X2(regout,bit256,regin,clk,we,sel_cyc,sel_rs,clr);
  output [15:0] regout;
  input [15:0] regin;
  input  clk,we,sel_cyc,sel_rs,bit256,clr;
  wire [15:0] muxout;        

  //sel_cyc=0,select regin;sel_cyc=1,select regout.
  MUX21_16  MUX21_16(muxout,sel_cyc,regin,regout);
  
  //sel_rs=0,select muxout;sel_rs=1,select right shift 1bit.
  RR_SHI_REG_MDY_CLR  RR_SHI_REG_MDY_CLR(regout,bit256,muxout,clk,we,sel_rs,clr);
  
endmodule