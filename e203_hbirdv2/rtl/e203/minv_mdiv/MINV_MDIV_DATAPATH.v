//modified in 2016.11.27  1
module  MINV_MDIV_DATAPATH(u,regvout,regx1out,regx2out,minv_flag,minv_rdy,
                      temp_sign,x1_sign,x2_sign,u_flag,datain,clk,rst,regu_we,
                      regu_cyc,regu_rs,regv_we,regv_cyc,regv_rs,regp_we,regp_cyc,
                      regx1_we,regx1_cyc,regx1_rs,regx2_we,regx2_cyc,regx2_rs,regt_we,
                      regt_cyc,regt_rs,mux0_sel,mux1_sel,add_sub,carry_sel,mux3_sel,
                      u_flag_set,minv_flag_we,minv_en,set_minv_rdy,cur_state,regx1_h2b_we,
                      regx2_h2b_we,regu_h2b_we,regt_h2b_we,regx1_h2b_rs_en,
                      regx2_h2b_rs_en,regu_h2b_rs_en,regt_h2b_rs_en,minv_mdiv,
                      has_done);
                      
  output [255:0] u,regvout;
  output [31:0] regx1out,regx2out;  
  output minv_rdy,minv_flag,temp_sign,x1_sign,x2_sign,u_flag;
  //output [1:0] minv_flag;
  
  input [31:0] datain;
  input  clk,rst,regu_we,regu_cyc,regu_rs,regv_we,regv_cyc,regv_rs,regp_we,regp_cyc,minv_en,
         regx1_we,regx1_cyc,regx1_rs,regx2_we,regx2_cyc,regx2_rs,regt_we,regt_cyc,regt_rs,
         add_sub,carry_sel,mux3_sel,u_flag_set,minv_flag_we,set_minv_rdy,
         regx1_h2b_we,regx2_h2b_we,regu_h2b_we,regt_h2b_we,
         regx1_h2b_rs_en,regx2_h2b_rs_en,regu_h2b_rs_en,regt_h2b_rs_en,minv_mdiv,
         has_done;
         
  input [2:0] mux0_sel,mux1_sel;
  input [3:0] cur_state;   
  
  wire [255:0] reguout,regtout;
  wire [31:0] regpout,mux0out,mux1out,adderin,sum_32,mux3out;
  wire c_out,carry_in,carry,u_flag;
  wire [1:0] regu_h2b_out,regx1_h2b_out,regx2_h2b_out,regt_h2b_out,
             regx1_h2b_in,regx2_h2b_in,x1_sub_x2_h2b,x1_add_p_h2b,x2_sub_x1_h2b,x2_add_p_h2b,
             u_sub_v_h2b,t_sub_v_h2b;
  reg [1:0]  temp_h2b_in;
  reg  minv_flag_in; 
   
  MUX21_32  mux3(mux3out,mux3_sel,datain,sum_32);//mux3_sel=0,select datain,mux3_sel=1,select sum_32.
  MINV_REG_U_T  regu(reguout,regu_h2b_out[0],mux3out,clk,regu_we,regu_cyc,regu_rs);
  //MUX21_32  mux4(mux4out,mux4_sel,datain,sum_32);//mux4_sel=0,select datain,mux4_sel=1,select sum_32.
  //MINV_REG_V  regv(regvout,mux4out,clk,regv_we,regv_cyc,regv_rs);    
  MINV_REG_V  regv(regvout,mux3out,clk,regv_we,regv_cyc,regv_rs);
  CYC_SHI_REG_256  regp(regpout,datain,clk,regp_we,regp_cyc);  
  
  MUX51_32  mux0(mux0out,mux0_sel,reguout[31:0],regvout[31:0],regx1out,regx2out,regtout[31:0]);
  MUX61_32  mux1(mux1out,mux1_sel,reguout[31:0],regvout[31:0],regx1out,regx2out,regtout[31:0],regpout);  
  assign  adderin=mux1out^{32{add_sub}};  
  BCLA_ADD_32  add_32(sum_32,c_out,mux0out,adderin,carry_in);  
  DFF0  dff0(carry,c_out,clk);
  //DFF1  dff1(carry256,c_out,clk,dff1_we);
  MUX21  mux2(carry_in,carry_sel,carry,add_sub);//carry_sel=0,select carry;carry_sel=1,select add_sub.
  
  //MUX21_32  mux5(mux5out,mux5_sel,datain,sum_32);//mux5_sel=0,select datain,mux5_sel=1,select sum_32.2032.11.21 revised
  //MINV_REG_X1  regx1(regx1out,regx1_h2b_out[0],mux5out,clk,regx1_we,regx1_cyc,regx1_rs,minv_en & minv_mdiv);//add set 1 function.
  MINV_REG_X1  regx1(regx1out,regx1_h2b_out[0],mux3out,clk,regx1_we,regx1_cyc,regx1_rs,minv_en & minv_mdiv);
  //minv_mdiv=1,represent modular inversion operation,minv_mdiv=0,represent modular division operation.2032.11.21
  MINV_REG_X2  regx2(regx2out,regx2_h2b_out[0],sum_32,clk,regx2_we,regx2_cyc,regx2_rs,minv_en);//add clear 0 function.       
  MINV_REG_U_T  regt(regtout,regt_h2b_out[0],sum_32,clk,regt_we,regt_cyc,regt_rs);
  
  MINV_REG_H2B  regx1_h2b(regx1_h2b_out,regx1_h2b_in,clk,regx1_h2b_we,minv_en,regx1_h2b_rs_en);
  MINV_REG_H2B  regx2_h2b(regx2_h2b_out,regx2_h2b_in,clk,regx2_h2b_we,minv_en,regx2_h2b_rs_en);
  MINV_REG_H2B  regu_h2b(regu_h2b_out,temp_h2b_in,clk,regu_h2b_we,minv_en,regu_h2b_rs_en);
  MINV_REG_H2B  regt_h2b(regt_h2b_out,temp_h2b_in,clk,regt_h2b_we,minv_en,regt_h2b_rs_en);
                                      
  U_FLA_REG  U_FLA_REG(u_flag,clk,minv_en,u_flag_set);
  MINV_FLA_REG_modify  MINV_FLA_REG_modify(minv_flag,clk,minv_flag_in,minv_flag_we,rst);
  RDY_FLA_REG  RDY_FLA_REG(minv_rdy,clk,minv_en,set_minv_rdy,has_done);
  
  assign regx1_h2b_in=add_sub?x1_sub_x2_h2b:x1_add_p_h2b;
  assign x1_sub_x2_h2b=regx1_h2b_out+{~regx2_h2b_out[1],~regx2_h2b_out[0]}+c_out;
  assign x1_add_p_h2b=regx1_h2b_out+c_out;
  
  assign regx2_h2b_in=add_sub?x2_sub_x1_h2b:x2_add_p_h2b;
  assign x2_sub_x1_h2b=regx2_h2b_out+{~regx1_h2b_out[1],~regx1_h2b_out[0]}+c_out;
  assign x2_add_p_h2b=regx2_h2b_out+c_out;
  
  assign u_sub_v_h2b=regu_h2b_out+2'b11+c_out;
  assign t_sub_v_h2b=regt_h2b_out+2'b11+c_out;
  //assign x1_sub_p_h2b=regx1_h2b_out+2'b11+c_out;
  //assign x2_sub_p_h2b=regx2_h2b_out+2'b11+c_out;
  
  always@(cur_state or u_flag or u_sub_v_h2b or t_sub_v_h2b)
    case(cur_state)
      4'd8: begin
              if(u_flag)
                temp_h2b_in=u_sub_v_h2b;
              else
                temp_h2b_in=t_sub_v_h2b;
            end
      //4'd13: temp_h2b_in=x1_sub_p_h2b;
      //4'd15: temp_h2b_in=x2_sub_p_h2b;
      default: temp_h2b_in=2'bxx;
    endcase
  
/* 
   always@(cur_state or x1_sub_p_h2b[1] or x2_sub_p_h2b[1])
    case(cur_state)      
      4'd12: minv_flag_in=2'b00;
      4'd13: begin
               if(x1_sub_p_h2b[1])
                 minv_flag_in=2'b00;
               else
                 minv_flag_in=2'b11;
             end
      4'd14: minv_flag_in=2'b01;
      4'd15: begin
               if(x2_sub_p_h2b[1])
                 minv_flag_in=2'b01;
               else
                 minv_flag_in=2'b11;
             end
      default: minv_flag_in=2'bxx;
    endcase  
*/

  always@(cur_state or u)
    case(cur_state)      
      4'd14: begin
               if(u==1)
                 minv_flag_in=1'b0;
               else
                 minv_flag_in=1'b1;
             end
      default: minv_flag_in=1'bx;
    endcase

  //assign regtout_32=regtout[15:0];
  assign u=u_flag ? reguout : regtout;
  
  assign temp_sign=temp_h2b_in[1];
  //assign x1_sign=regx1_h2b_in[1];
  assign x1_sign=x1_sub_x2_h2b[1];
  //assign x2_sign=regx2_h2b_in[1];
  assign x2_sign=x2_sub_x1_h2b[1];
endmodule