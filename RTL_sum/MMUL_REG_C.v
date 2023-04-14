//sel_cyc=0 and sel_ls=0,write in outside input regin,
//sel_cyc=1 and sel_ls=0,shift right cyclic 16bits,
//sel_ls=1,shift left 1bit.
//add clear function.
module  MMUL_REG_C(regout,b256,regin,clk,we,sel_cyc,sel_ls,clr);
  output [15:0] regout;
  output b256;
  input [15:0] regin;
  input  clk,we,sel_cyc,sel_ls,clr;
  wire [15:0] muxout;        

  MUX21_16  MUX21_16(muxout,sel_cyc,regin,regout);//sel_cyc=0,select regin;sel_cyc=1,select regout.
  LR_SHI_REG_CLR  LR_SHI_REG_CLR(regout,b256,muxout,clk,we,sel_ls,clr);//sel_ls=0,select muxout;sel_ls=1,select left shift.
endmodule