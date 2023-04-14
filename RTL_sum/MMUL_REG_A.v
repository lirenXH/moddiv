module  MMUL_REG_A(regout,regin,clk,we,sel);
  output [255:0] regout;
  input [15:0] regin;
  input  clk,we,sel;
  
  wire [15:0]  mux0out,mux1out,mux2out,mux3out,mux4out,mux5out,mux6out,mux7out,
               mux8out,mux9out,mux10out,mux11out,mux12out,mux13out,mux14out,mux15out;         
    
  MUX21_16  MUX21_16_0(mux0out,sel,regout[31:16],regout[16:1]);//sel=0,right shift 16bits,sel=1,right shift 1bit.
  REG_16  REG_16_0(regout[15:0],mux0out,clk,we);  
  MUX21_16  MUX21_16_1(mux1out,sel,regout[47:32],regout[32:17]);
  REG_16  REG_16_1(regout[31:16],mux1out,clk,we);
  MUX21_16  MUX21_16_2(mux2out,sel,regout[63:48],regout[48:33]);
  REG_16  REG_16_2(regout[47:32],mux2out,clk,we);
  MUX21_16  MUX21_16_3(mux3out,sel,regout[79:64],regout[64:49]);
  REG_16  REG_16_3(regout[63:48],mux3out,clk,we);
  MUX21_16  MUX21_16_4(mux4out,sel,regout[95:80],regout[80:65]);
  REG_16  REG_16_4(regout[79:64],mux4out,clk,we);
  MUX21_16  MUX21_16_5(mux5out,sel,regout[111:96],regout[96:81]);
  REG_16  REG_16_5(regout[95:80],mux5out,clk,we);
  MUX21_16  MUX21_16_6(mux6out,sel,regout[127:112],regout[112:97]);
  REG_16  REG_16_6(regout[111:96],mux6out,clk,we);
  MUX21_16  MUX21_16_7(mux7out,sel,regout[143:128],regout[128:113]);
  REG_16  REG_16_7(regout[127:112],mux7out,clk,we);
  MUX21_16  MUX21_16_8(mux8out,sel,regout[159:144],regout[144:129]);
  REG_16  REG_16_8(regout[143:128],mux8out,clk,we);
  MUX21_16  MUX21_16_9(mux9out,sel,regout[175:160],regout[160:145]);
  REG_16  REG_16_9(regout[159:144],mux9out,clk,we);
  MUX21_16  MUX21_16_10(mux10out,sel,regout[191:176],regout[176:161]);
  REG_16  REG_16_10(regout[175:160],mux10out,clk,we);
  MUX21_16  MUX21_16_11(mux11out,sel,regout[207:192],regout[192:177]);
  REG_16  REG_16_11(regout[191:176],mux11out,clk,we);
  MUX21_16  MUX21_16_12(mux12out,sel,regout[223:208],regout[208:193]);
  REG_16  REG_16_12(regout[207:192],mux12out,clk,we);
  MUX21_16  MUX21_16_13(mux13out,sel,regout[239:224],regout[224:209]);
  REG_16  REG_16_13(regout[223:208],mux13out,clk,we);
  MUX21_16  MUX21_16_14(mux14out,sel,regout[255:240],regout[240:225]);
  REG_16  REG_16_14(regout[239:224],mux14out,clk,we);
  MUX21_16  MUX21_16_15(mux15out,sel,regin,{1'b0,regout[255:241]});
  REG_16  REG_16_15(regout[255:240],mux15out,clk,we);  
endmodule