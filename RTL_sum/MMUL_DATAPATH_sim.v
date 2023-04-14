module  MMUL_DATAPATH_sim(regcout,regdout,regbout,a,a0,c_flag,b_flag,mmul_rdy,datain,clk,rega_we,rega_sel,
                      regb_we,regb_cyc,regb_ls,regp_we,regp_cyc,mux0_sel,mux1_sel,add_sub,
                      dff1_we,carry_sel,regc_we,regc_cyc,regc_ls,mmul_en,regd_we,regd_cyc,regd_ls,
                      mux3_sel,c_flag_we,b_flag_we,set_mmul_rdy,regb257,regc257,regd257);
  output [15:0] regcout,regdout,regbout;
  output a,a0,mmul_rdy;
  output [1:0] c_flag,b_flag;
  input [15:0] datain;
  input  clk,rega_we,rega_sel,regb_we,regb_cyc,regb_ls,regp_we,regp_cyc,add_sub,
         dff1_we,carry_sel,regc_we,regc_cyc,regc_ls,mmul_en,regd_we,regd_cyc,regd_ls,
         mux3_sel,c_flag_we,b_flag_we,set_mmul_rdy;
  input [1:0] mux0_sel,mux1_sel;
  
  output [256:0] regb257,regc257,regd257;
  
  wire [255:0] regaout;
  wire [15:0] regbout,regpout,mux0out,regcout,regdout,mux1out,adderin,sum_16,mux3out;
  wire regb256,c_out,carry_in,carry,carry256,regc256,regd256,sb_256,sign_2b_p,sign_c_b_p;
  wire [1:0] flag_in,c_flag_in,b_flag_in; 
   
  MMUL_REG_A  rega(regaout,datain,clk,rega_we,rega_sel);//rega_sel=0,write datain;rega_sel=1,shift right 1bit.
  MUX21_16  mux3(mux3out,mux3_sel,datain,sum_16);//mux3_sel=1,select sum_16.
  MMUL_REG_B_sim  regb(regbout,regb256,mux3out,clk,regb_we,regb_cyc,regb_ls,regb257);
  CYC_SHI_REG_256  regp(regpout,datain,clk,regp_we,regp_cyc);
  MUX31_16  mux0(mux0out,mux0_sel,regcout,regdout,regbout);
  MUX41_16  mux1(mux1out,mux1_sel,regcout,regdout,regbout,regpout);
  assign  adderin=mux1out^{16{add_sub}};  
  BCLA_ADD_16  add_16(sum_16,c_out,mux0out,adderin,carry_in);  
  DFF0  dff0(carry,c_out,clk);
  DFF1  dff1(carry256,c_out,clk,dff1_we);
  MUX21  mux2(carry_in,carry_sel,carry,add_sub);
  assign sb_256=(b_flag==2'b10)?regb256:((b_flag==2'b00)?regc256:regd256);
  assign sign_2b_p=~sb_256 & ~c_out;//the sign bit of 2b-p;
  assign sign_c_b_p=~carry256 & ~c_out;//the sign bit of c+b-p; 
  assign a=|regaout[255:1];
  assign a0=regaout[0];
  MMUL_REG_C_sim  regc(regcout,regc256,sum_16,clk,regc_we,regc_cyc,regc_ls,mmul_en,regc257);//add clear function.        
  MMUL_REG_B_sim  regd(regdout,regd256,sum_16,clk,regd_we,regd_cyc,regd_ls,regd257); 
  C_FLA_REG  C_FLA_REG(c_flag,clk,mmul_en,c_flag_in,c_flag_we);  
  B_FLA_REG  B_FLA_REG(b_flag,clk,mmul_en,b_flag_in,b_flag_we);  
  RDY_FLA_REG  RDY_FLA_REG(mmul_rdy,clk,mmul_en,set_mmul_rdy);
  assign flag_in[0]=(c_flag[1] ^ b_flag[1]) & ~c_flag[0] & ~b_flag[0];
  assign flag_in[1]=(c_flag[0] ^ b_flag[0]) & ~c_flag[1] & ~b_flag[1];
  assign c_flag_in=sign_c_b_p? c_flag:flag_in;
  assign b_flag_in=sign_2b_p? b_flag:flag_in;
endmodule