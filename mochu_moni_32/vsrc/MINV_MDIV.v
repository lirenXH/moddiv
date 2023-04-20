//模除TOP层
//the modular inverse operation is enabled by minv_en,when minv_en=1(posetive pulse),start operation.
//the result(modular inverse) is stored in one of two registers:regx1,regx2,indicated by minv_flag. 
//minv_flag=1'b0 represent that minv is stored in regx1.
//minv_flag=1'b1 represent that minv is stored in regx2.
//minv_rdy=1 represent that modular inverse operation is completed.
//loada is used to load soure operand a in to regu,
//loadp is used to load parameter p in to regv and regp,
//outx1 is used to output the 256 bits data stored in regx1 by right shift 32bit per cycle,
//outx2 is used to output the 256 bits data stored in regx2 by right shift 32bit per cycle,
//minv_mdiv=1'b1 represent modular inverse operation,
//minv_mdiv=1'b0 represent modular division operation.
//modified in 2016.11.27
module  MINV_MDIV(result_out,minv_mdiv_rdy,minv_mdiv_flag,
                  datain,clk,rst,minv_mdiv,minv_mdiv_en,loada,loadb,loadp,out_ready,out_valid);
  
	output [31:0] result_out;
  output minv_mdiv_rdy,minv_mdiv_flag,out_valid;  
  input [31:0] datain;
  input  clk,rst,minv_mdiv_en,loada,loadp,out_ready,loadb,minv_mdiv;
  
  wire [255:0] u,regvout;
	wire [31:0] regx1out,regx2out;  
  wire temp_sign,x1_sign,x2_sign,u_flag;
  wire regu_we,regu_cyc,regu_rs,regv_we,regv_cyc,regv_rs,regp_we,regp_cyc,
       regx1_we,regx1_cyc,regx1_rs,regx2_we,regx2_cyc,regx2_rs,regt_we,regt_cyc,regt_rs,
       add_sub,carry_sel,mux3_sel,u_flag_set,minv_flag_we,set_minv_rdy,
       regx1_h2b_we,regx2_h2b_we,regu_h2b_we,regt_h2b_we,count_en,
       regx1_h2b_rs_en,regx2_h2b_rs_en,regu_h2b_rs_en,regt_h2b_rs_en,
			 has_done;         
  wire [2:0] mux0_sel,mux1_sel;
  wire [3:0] cur_state;
  wire [2:0] count;
  
  MINV_MDIV_DATAPATH  MINV_MDIV_DATAPATH(u,regvout,regx1out,regx2out,minv_mdiv_flag,minv_mdiv_rdy,
                      temp_sign,x1_sign,x2_sign,u_flag,datain,clk,rst,regu_we|loada,
                      regu_cyc,regu_rs,regv_we|loadp,regv_cyc,regv_rs,regp_we|loadp,regp_cyc,
                      regx1_we|(out_ready && out_valid)|loadb,regx1_cyc,regx1_rs,regx2_we|(out_ready && out_valid),regx2_cyc,regx2_rs,regt_we,//result output fire x2
                      regt_cyc,regt_rs,mux0_sel,mux1_sel,add_sub,carry_sel,mux3_sel,
                      u_flag_set,minv_flag_we,minv_mdiv_en,set_minv_rdy,cur_state,regx1_h2b_we,
                      regx2_h2b_we,regu_h2b_we,regt_h2b_we,regx1_h2b_rs_en,
                      regx2_h2b_rs_en,regu_h2b_rs_en,regt_h2b_rs_en,minv_mdiv,
											has_done);

  MINV_MDIV_CONTROL  MINV_MDIV_CONTROL(clk,rst,minv_mdiv_en,count,u,regvout,regx1out[0],regx2out[0],temp_sign,
                     x1_sign,x2_sign,u_flag,regu_we,regu_cyc,regu_rs,regv_we,
                     regv_cyc,regv_rs,regp_we,regp_cyc,regx1_we,regx1_cyc,regx1_rs,
                     regx2_we,regx2_cyc,regx2_rs,regt_we,regt_cyc,regt_rs,add_sub,
                     carry_sel,mux3_sel,u_flag_set,minv_flag_we,set_minv_rdy,
                     regx1_h2b_we,regx2_h2b_we,regu_h2b_we,regt_h2b_we,regx1_h2b_rs_en,regx2_h2b_rs_en,
                     regu_h2b_rs_en,regt_h2b_rs_en,mux0_sel,mux1_sel,cur_state,count_en,
                     out_ready,out_valid,has_done);
  
	assign result_out = minv_mdiv_flag ? regx2out : regx1out ;
  
  COUNTER  COUNTER(count,clk,rst,count_en);
endmodule
