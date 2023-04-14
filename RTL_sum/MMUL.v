module  MMUL(regcout,regdout,regbout,c_flag,mmul_rdy,
             datain,clk,rst,mmul_en,loada,loadb,loadp,outc,outd,outb);
                  
  output [15:0] regcout,regdout,regbout;
  output [1:0] c_flag;
  output mmul_rdy;
  input [15:0] datain;
  input  clk,rst,mmul_en,loada,loadb,loadp,outc,outd,outb;
  
  wire  a255_1_or,a0,rega_we,rega_sel,regb_we,regb_cyc,regb_ls,regp_we,regp_cyc,add_sub,
        dff1_we,carry_sel,regc_we,regc_cyc,regc_ls,regd_we,regd_cyc,regd_ls,mux3_sel,
        c_flag_we,b_flag_we,set_mmul_rdy,count_en;
  wire [1:0] b_flag,mux0_sel,mux1_sel;
  wire [3:0] count;
 
  MMUL_DATAPATH  MMUL_DATAPATH(regcout,regdout,regbout,a255_1_or,a0,c_flag,b_flag,mmul_rdy,datain,clk,
                               rega_we|loada,rega_sel,regb_we|loadb|outb,regb_cyc,regb_ls,regp_we|loadp,regp_cyc,mux0_sel,
                               mux1_sel,add_sub,dff1_we,carry_sel,regc_we|outc,regc_cyc,regc_ls,mmul_en,
                               regd_we|outd,regd_cyc,regd_ls,mux3_sel,c_flag_we,b_flag_we,set_mmul_rdy);                                       
                                         
  MMUL_CONTROL  MMUL_CONTROL(clk,rst,mmul_en,a255_1_or,a0,c_flag,b_flag,count,
                             rega_we,rega_sel,regb_we,regb_cyc,regb_ls,regp_we,regp_cyc,add_sub,
                             dff1_we,carry_sel,regc_we,regc_cyc,regc_ls,regd_we,regd_cyc,regd_ls,
                             mux3_sel,c_flag_we,b_flag_we,set_mmul_rdy,count_en,mux0_sel,mux1_sel);
  COUNTER  COUNTER(count,clk,rst,count_en);     
endmodule