module  MADD_MSUB_DATAPATH(regs0out,regs1out,sign_a_b,sign_a_b_p,datain,clk,rega_we,regb_we,regp_we,regs0_we,regs1_we,dff1_we,
                           carry_sel,rega_cyc,regb_cyc,regp_cyc,regs0_cyc,regs1_cyc,mux0_sel,mux1_sel,add_sub);
  output [15:0] regs0out,regs1out;
  output sign_a_b,sign_a_b_p;
  input [15:0] datain;
  input  clk,rega_we,regb_we,regp_we,regs0_we,regs1_we,dff1_we,carry_sel,rega_cyc,regb_cyc,regp_cyc,
         regs0_cyc,regs1_cyc,mux0_sel,mux1_sel,add_sub;
  
  wire [15:0] regaout,regbout,regpout,mux0out,mux1out,sum_16,adderin;
  wire  c_out,carry,carry256,carry_in;
  
  CYC_SHI_REG_256  rega(regaout,datain,clk,rega_we,rega_cyc);
  CYC_SHI_REG_256  regb(regbout,datain,clk,regb_we,regb_cyc); 
  CYC_SHI_REG_256  regp(regpout,datain,clk,regp_we,regp_cyc);
  MUX21_16  mux0(mux0out,mux0_sel,regaout,regs0out);
  MUX21_16  mux1(mux1out,mux1_sel,regbout,regpout);
  assign  adderin=mux1out^{16{add_sub}}; 
  BCLA_ADD_16  add_16(sum_16,c_out,mux0out,adderin,carry_in); 
  //DFF0  dff0(carry,c_out,clk,dff0_clr,dff0_set);
  DFF0  dff0(carry,c_out,clk);
  DFF1  dff1(carry256,c_out,clk,dff1_we);
  MUX21  MUX21(carry_in,carry_sel,carry,add_sub);
  assign sign_a_b=~c_out;//the sign bit of a-b; 
  assign sign_a_b_p=~carry256 & ~c_out;//the sign bit of a+b-p;
  CYC_SHI_REG_256  regs0(regs0out,sum_16,clk,regs0_we,regs0_cyc);
  CYC_SHI_REG_256  regs1(regs1out,sum_16,clk,regs1_we,regs1_cyc);      
endmodule