module  UNS_ADD_256(sum,carry,datain,clk,rega_we,regb_we,dff_we,clr,regs_we,rega_sel_cyc,regb_sel_cyc,regs_sel_cyc);
  output [15:0] sum;
  output carry;
  input [15:0] datain;
  input  clk,rega_we,regb_we,dff_we,clr,regs_we,rega_sel_cyc,regb_sel_cyc,regs_sel_cyc;
  wire [15:0] regaout,regbout,sum_16;
  wire  c_out;
  
  CYC_SHI_REG_256  REGA(regaout,datain,clk,rega_we,rega_sel_cyc);
  CYC_SHI_REG_256  REGB(regbout,datain,clk,regb_we,regb_sel_cyc); 
  BCLA_ADD_16  BCLA_ADD_16(sum_16,c_out,regaout,regbout,carry);  
  DFF_CARRY  DFF_CARRY(carry,c_out,clk,dff_we,clr);
  CYC_SHI_REG_256  REGS(sum,sum_16,clk,regs_we,regs_sel_cyc);     
endmodule