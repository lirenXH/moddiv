//the modular inverse operation is enabled by minv_en,when minv_en=1(posetive pulse),start operation.
//the result(modular inverse) is stored in one of three registers:regx1,regx2,regt,indicated by minv_flag. 
//minv_flag=2'b00 represent that minv is stored in regx1.
//minv_flag=2'b01 represent that minv is stored in regx2.
//minv_flag=2'b11 represent that minv is stored in regt.
//minv_rdy=1 represent that modular inverse operation is completed.
//loada is used to load soure operand a in to regu,
//loadp is used to load parameter p in to regv and regp,
//outx1 is used to output the 256 bits data stored in regx1 by right shift 16bit per cycle,
//outx2 is used to output the 256 bits data stored in regx2 by right shift 16bit per cycle,
//outt is used to output the 256 bits data stored in regt by right shift 16bit per cycle.

module  MINV(regx1out,regx2out,regtout_16,minv_rdy,minv_flag,
             datain,clk,rst,minv_en,loada,loadp,outx1,outx2,outt);
  
  output [15:0] regtout_16,regx1out,regx2out;  
  output minv_rdy;  
  output [1:0] minv_flag;  
  input [15:0] datain;
  input  clk,rst,minv_en,loada,loadp,outx1,outx2,outt;
  
  wire [255:0] u,regvout;
  wire temp_sign,x1_sign,x2_sign,u_flag;
  wire regu_we,regu_cyc,regu_rs,regv_we,regv_cyc,regv_rs,regp_we,regp_cyc,
       regx1_we,regx1_cyc,regx1_rs,regx2_we,regx2_cyc,regx2_rs,regt_we,regt_cyc,regt_rs,
       add_sub,carry_sel,mux3_sel,mux4_sel,u_flag_set,minv_flag_we,set_minv_rdy,
       regx1_h2b_we,regx2_h2b_we,regu_h2b_we,regt_h2b_we,count_en,
       regx1_h2b_rs_en,regx2_h2b_rs_en,regu_h2b_rs_en,regt_h2b_rs_en;         
  wire [2:0] mux0_sel,mux1_sel;
  wire [3:0] cur_state,count;
  
  MINV_DATAPATH  MINV_DATAPATH(u,regvout,regtout_16,regx1out,regx2out,minv_flag,minv_rdy,
                              temp_sign,x1_sign,x2_sign,u_flag,datain,clk,regu_we|loada,
                              regu_cyc,regu_rs,regv_we|loadp,regv_cyc,regv_rs,regp_we|loadp,regp_cyc,
                              regx1_we|outx1,regx1_cyc,regx1_rs,regx2_we|outx2,regx2_cyc,regx2_rs,regt_we|outt,
                              regt_cyc,regt_rs,mux0_sel,mux1_sel,add_sub,carry_sel,mux3_sel,mux4_sel,
                              u_flag_set,minv_flag_we,minv_en,set_minv_rdy,cur_state,regx1_h2b_we,
                              regx2_h2b_we,regu_h2b_we,regt_h2b_we,regx1_h2b_rs_en,
                              regx2_h2b_rs_en,regu_h2b_rs_en,regt_h2b_rs_en);

  MINV_CONTROL  MINV_CONTROL(clk,rst,minv_en,count,u,regvout,regx1out[0],regx2out[0],temp_sign,
                            x1_sign,x2_sign,u_flag,regu_we,regu_cyc,regu_rs,regv_we,
                            regv_cyc,regv_rs,regp_we,regp_cyc,regx1_we,regx1_cyc,regx1_rs,
                            regx2_we,regx2_cyc,regx2_rs,regt_we,regt_cyc,regt_rs,add_sub,
                            carry_sel,mux3_sel,mux4_sel,u_flag_set,minv_flag_we,set_minv_rdy,
                            regx1_h2b_we,regx2_h2b_we,regu_h2b_we,regt_h2b_we,regx1_h2b_rs_en,regx2_h2b_rs_en,
                            regu_h2b_rs_en,regt_h2b_rs_en,mux0_sel,mux1_sel,cur_state,count_en);
  
  
  COUNTER  COUNTER(count,clk,rst,count_en);
endmodule
