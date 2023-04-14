module  MADD_MSUB(regs0out,regs1out,result_rdy,result_flag,loada,loadb,loadp,datain,outs0,outs1,
                  clk,rst,madd_en,msub_en);
  output [15:0] regs0out,regs1out;
  output result_rdy,result_flag;
  input [15:0] datain;
  input  clk,rst,madd_en,msub_en,loada,loadb,loadp,outs0,outs1;
  wire  sign_a_b,sign_a_b_p,rega_we,regb_we,regp_we,regs0_we,regs1_we,dff1_we,count_en,
        dff0_clr,dff0_set,rega_cyc,regb_cyc,regp_cyc,regs0_cyc,regs1_cyc,mux0_sel,mux1_sel,add_sub;
  wire [3:0] count;
  
  MADD_MSUB_DATAPATH  MADD_MSUB_DATAPATH(regs0out,regs1out,sign_a_b,sign_a_b_p,datain,clk,rega_we|loada,
                                         regb_we|loadb,regp_we|loadp,regs0_we|outs0,regs1_we|outs1,dff1_we,
                                         carry_sel,rega_cyc&(~loada),regb_cyc&(~loadb),regp_cyc&(~loadp),
                                         regs0_cyc|outs0,regs1_cyc|outs1,mux0_sel,mux1_sel,add_sub);
  MADD_MSUB_CONTROL  MADD_MSUB_CONTROL(clk,rst,madd_en,msub_en,sign_a_b,sign_a_b_p,count,rega_we,regb_we,
                                       regp_we,regs0_we,regs1_we,dff1_we,carry_sel,rega_cyc,regb_cyc,regp_cyc,
                                       regs0_cyc,regs1_cyc,mux0_sel,mux1_sel,add_sub,count_en,result_rdy,result_flag);
  COUNTER  COUNTER(count,clk,rst,count_en);  
     
endmodule