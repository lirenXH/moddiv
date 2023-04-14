//modified in 2016.11.20
module  MINV_CONTROL_modify(clk,rst,minv_en,count,u,regvout,regx1out0,regx2out0,temp_sign,
                     x1_sign,x2_sign,u_flag,regu_we,regu_cyc,regu_rs,regv_we,
                     regv_cyc,regv_rs,regp_we,regp_cyc,regx1_we,regx1_cyc,regx1_rs,
                     regx2_we,regx2_cyc,regx2_rs,regt_we,regt_cyc,regt_rs,add_sub,
                     carry_sel,mux3_sel,mux4_sel,u_flag_set,minv_flag_we,set_minv_rdy,
                     regx1_h2b_we,regx2_h2b_we,regu_h2b_we,regt_h2b_we,regx1_h2b_rs_en,regx2_h2b_rs_en,
                     regu_h2b_rs_en,regt_h2b_rs_en,mux0_sel,mux1_sel,cur_state,count_en);
  input clk,rst,minv_en,regx1out0,regx2out0,temp_sign,x1_sign,x2_sign,u_flag;
  input [255:0] u,regvout;
  input [3:0] count; 
  
  output regu_we,regu_cyc,regu_rs,regv_we,regv_cyc,regv_rs,regp_we,regp_cyc,
         regx1_we,regx1_cyc,regx1_rs,regx2_we,regx2_cyc,regx2_rs,regt_we,regt_cyc,regt_rs,
         add_sub,carry_sel,mux3_sel,mux4_sel,u_flag_set,minv_flag_we,set_minv_rdy,
         regx1_h2b_we,regx2_h2b_we,regu_h2b_we,regt_h2b_we,regx1_h2b_rs_en,regx2_h2b_rs_en,
         regu_h2b_rs_en,regt_h2b_rs_en,count_en;
  output [2:0] mux0_sel,mux1_sel;
  output [3:0] cur_state;
  reg [3:0] cur_state,nxt_state;
  reg    regu_we,regu_cyc,regu_rs,regv_we,regv_cyc,regv_rs,regp_we,
         regx1_we,regx1_cyc,regx1_rs,regx2_we,regx2_cyc,regx2_rs,regt_we,regt_cyc,regt_rs,
         add_sub,carry_sel,mux3_sel,mux4_sel,u_flag_set,minv_flag_we,
         regx1_h2b_we,regx2_h2b_we,regu_h2b_we,regt_h2b_we,regx1_h2b_rs_en,regx2_h2b_rs_en,
         regu_h2b_rs_en,regt_h2b_rs_en,count_en;
  reg [2:0] mux0_sel,mux1_sel;

//define parameters   
  parameter  S0=4'd0,S1=4'd1,S2=4'd2,S3=4'd3,S4=4'd4,S5=4'd5,S6=4'd6,S7=4'd7,S8=4'd8,
             S9=4'd9,S10=4'd10,S11=4'd11,S12=4'd12,S13=4'd13,S14=4'd14;
  
//state register
  always @(posedge clk)
		if(rst)
			cur_state <= S0; 
		else
			cur_state <= nxt_state;
			
//next state generation logic
 	always @(cur_state or minv_en or count or u or regvout or regx1out0 or regx2out0 
 	         or temp_sign or x1_sign or x2_sign)
		case(cur_state)
			S0:			     	  
				 if(minv_en)
				    nxt_state = S1; 
				 else 
				    nxt_state = S0;
			S1:
			   if((u!=1)&(regvout!=1)&(u[0]==0))
			      nxt_state = S2;
			   else if((u!=1)&(regvout!=1)&(regvout[0]==0))
			      nxt_state = S5;
			   else if((u!=1)&(regvout!=1)&(regvout[0]==1))
			      nxt_state = S8;
			   else
			      nxt_state = S14;			    			
			S2:
			   if(regx1out0==0)
			       nxt_state = S3;
			   else
			       nxt_state = S4;			       			
			S3:
			   if(u[0]==0)
			       nxt_state = S2;
			   else if(regvout[0]==0)
			       nxt_state = S5;
			   else
			       nxt_state = S8;			       			  			
			S4:
			   if(count==15)
			       nxt_state = S3;
			   else
			       nxt_state = S4;			        
			S5:
			   if(regx2out0==0)
			       nxt_state = S6;
			   else
			       nxt_state = S7;			     
			S6:
			   if(regvout[0]==0)
			       nxt_state = S5;
			   else
			       nxt_state = S8;			       
			S7:
			   if(count==15)
			       nxt_state = S6;
			   else
			       nxt_state = S7;			       
			S8:
			   if(count!=15)
			       nxt_state = S8;
			   else if(temp_sign)
			       nxt_state = S10;
			   else
			       nxt_state = S9;
			S9:
			   if(count!=15)
			       nxt_state = S9;
			   else if(x1_sign)
			       nxt_state = S12;
			   else if((u!=1)&(regvout!=1)&(u[0]==0))
			       nxt_state = S2;
			   else if((u!=1)&(regvout!=1)&(regvout[0]==0))
			       nxt_state = S5;
			   else if((u!=1)&(regvout!=1)&(regvout[0]==1))
			       nxt_state = S8;
			   else
			       nxt_state = S14; 
			S10:
			   if(count==15)
			       nxt_state = S11;
			   else
			       nxt_state = S10;
      S11:
			   if(count!=15)
			       nxt_state = S11;
			   else if(x2_sign)
			       nxt_state = S13;
			   else if((u!=1)&(regvout!=1)&(u[0]==0))
			       nxt_state = S2;
			   else if((u!=1)&(regvout!=1)&(regvout[0]==0))
			       nxt_state = S5;
			   else if((u!=1)&(regvout!=1)&(regvout[0]==1))
			       nxt_state = S8;
			   else
			       nxt_state = S14;
			S12:
			   if(count!=15)
			       nxt_state = S12;
			   else if((u!=1)&(regvout!=1)&(u[0]==0))
			       nxt_state = S2;
			   else if((u!=1)&(regvout!=1)&(regvout[0]==0))
			       nxt_state = S5;
			   else if((u!=1)&(regvout!=1)&(regvout[0]==1))
			       nxt_state = S8;
			   else
			       nxt_state = S14;
			S13:
			   if(count!=15)
			       nxt_state = S13;
			   else if((u!=1)&(regvout!=1)&(u[0]==0))
			       nxt_state = S2;
			   else if((u!=1)&(regvout!=1)&(regvout[0]==0))
			       nxt_state = S5;
			   else if((u!=1)&(regvout!=1)&(regvout[0]==1))
			       nxt_state = S8;
			   else
			       nxt_state = S14;
			S14:
			   nxt_state = S0;
			default:
			   nxt_state = S0;
		endcase
		
	//control signal generation logic
	always @(cur_state or u_flag)
		case(cur_state)
			S2:			     	  
				regu_we=u_flag;
			S8:
			  regu_we=1'b1;		
			S10:
			  regu_we=u_flag;			
			default:
			  regu_we=1'b0;
		endcase
  
  always @(cur_state or u_flag)
		case(cur_state)
			S8:			     	  
				regu_cyc=u_flag;
			S10:
			  regu_cyc=1'b1;		
			default:
			  regu_cyc=1'b0;
		endcase	
	
	always @(cur_state or u_flag)
		case(cur_state)
			S2:			     	  
				regu_rs=u_flag;
			default:
			  regu_rs=1'b0;
		endcase
		
	always @(cur_state)
		case(cur_state)
			S5:			     	  
				regv_we=1'b1;
			S8:			     	  
				regv_we=1'b1;
			S10:			     	  
				regv_we=1'b1;
			default:
			  regv_we=1'b0;
		endcase
		
	always @(cur_state)
		case(cur_state)
			S8:			     	  
				regv_cyc=1'b1;
			default:
			  regv_cyc=1'b0;
		endcase
		
	always @(cur_state)
		case(cur_state)
			S5:			     	  
				regv_rs=1'b1;
			default:
			  regv_rs=1'b0;
		endcase
		
	always @(cur_state)
		case(cur_state)
			S4,S7,S12,S13:			     	  
				regp_we=1'b1;
			default:
			  regp_we=1'b0;
		endcase
/*		
  always @(cur_state)
		case(cur_state)
			S4,S7,S12,S13:			     	  
				regp_cyc=1'b1;
			default:
			  regp_cyc=1'b0;
		endcase
*/
  assign regp_cyc=regp_we;
		
	always @(cur_state)
		case(cur_state)
			S3,S4,S9,S11,S12:			     	  
				regx1_we=1'b1;
			default:
			  regx1_we=1'b0;
		endcase
		
	always @(cur_state)
		case(cur_state)
			S11:			     	  
				regx1_cyc=1'b1;
			default:
			  regx1_cyc=1'b0;
		endcase
		
	always @(cur_state)
		case(cur_state)
			S3:			     	  
				regx1_rs=1'b1;
			default:
			  regx1_rs=1'b0;
		endcase
		
	always @(cur_state)
		case(cur_state)
			S6,S7,S9,S11,S13:			     	  
				regx2_we=1'b1;
			default:
			  regx2_we=1'b0;
		endcase
		
	always @(cur_state)
		case(cur_state)
			S9:			     	  
				regx2_cyc=1'b1;
			default:
			  regx2_cyc=1'b0;
		endcase
		
	always @(cur_state)
		case(cur_state)
			S6:			     	  
				regx2_rs=1'b1;
			default:
			  regx2_rs=1'b0;
		endcase
		
	always @(cur_state or u_flag)
		case(cur_state)
			S2,S10:			     	  
				regt_we=~u_flag;
			S8:
			  regt_we=1'b1;
			default:
			  regt_we=1'b0;
		endcase
		
	always @(cur_state or u_flag)
		case(cur_state)
			S8:			     	  
				regt_cyc=~u_flag;
			S10:
			  regt_cyc=1'b1;
			default:
			  regt_cyc=1'b0;
		endcase
		
	always @(cur_state or u_flag)
		case(cur_state)
			S2:			     	  
				regt_rs=~u_flag;
			default:
			  regt_rs=1'b0;
		endcase
		
	always @(cur_state)
		case(cur_state)
			S8,S9,S10,S11:			     	  
				add_sub=1'b1;
			default:
			  add_sub=1'b0;
		endcase
		
	always @(cur_state or count)
		case(cur_state)
			S4,S7,S8,S9,S10,S11,S12,S13:			     	  
				carry_sel=(count==4'd0);
			default:
			  carry_sel=1'b0;
		endcase
		
	always @(cur_state or u_flag)
		case(cur_state)
			S8:			     	  
				mux3_sel=~u_flag;
			default:
			  mux3_sel=1'b0;
		endcase
		
	always @(cur_state)
		case(cur_state)
			S10:			     	  
				mux4_sel=1'b1;
			default:
			  mux4_sel=1'b0;
		endcase
		
	always @(cur_state or temp_sign or count)
		case(cur_state)
			S8:			     	  
				if(count==4'd15)
				  u_flag_set=~temp_sign;
				else 
				  u_flag_set=1'b0;
			default:
			  u_flag_set=1'b0;
		endcase
		
	always @(cur_state)
		case(cur_state)
			S14:			     	  
				minv_flag_we=1'b1;
			default:
			  minv_flag_we=1'b0;
		endcase
		
	assign set_minv_rdy=minv_flag_we;
	
	always @(cur_state or count)
		case(cur_state)
			S4,S9,S12:			     	  
				regx1_h2b_we=(count==4'd15);
			default:
			  regx1_h2b_we=1'b0;
		endcase
		
	always @(cur_state or count)
		case(cur_state)
			S7,S11,S13:			     	  
				regx2_h2b_we=(count==4'd15);
			default:
			  regx2_h2b_we=1'b0;
		endcase

	always @(cur_state or u_flag or count)
		case(cur_state)
			S8:			     	  
				regu_h2b_we=~u_flag & (count==4'd15);
			default:
			  regu_h2b_we=1'b0;
		endcase
		
	always @(cur_state or u_flag or count)
		case(cur_state)
			S8:			     	  
				regt_h2b_we=u_flag & (count==4'd15);
			default:
			  regt_h2b_we=1'b0;
		endcase
		
	always @(cur_state)
		case(cur_state)
			S3:			     	  
				regx1_h2b_rs_en=1'b1;
			default:
			  regx1_h2b_rs_en=1'b0;
		endcase
		
	always @(cur_state)
		case(cur_state)
			S6:			     	  
				regx2_h2b_rs_en=1'b1;
			default:
			  regx2_h2b_rs_en=1'b0;
		endcase
		
	always @(cur_state or u_flag)
		case(cur_state)
			S2:			     	  
				regu_h2b_rs_en=u_flag;
			default:
			  regu_h2b_rs_en=1'b0;
		endcase
		
	always @(cur_state or u_flag)
		case(cur_state)
			S2:			     	  
				regt_h2b_rs_en=~u_flag;
			default:
			  regt_h2b_rs_en=1'b0;
		endcase
		
	always @(cur_state)
		case(cur_state)
			S4,S7,S8,S9,S10,S11,S12,S13:			     	  
				count_en=1'b1;
			default:
			  count_en=1'b0;
		endcase	
	
	always @(cur_state or u_flag)
		case(cur_state)
			S4,S9,S12:			     	  
				mux0_sel=3'd2;
			S7,S11,S13:			     	  
				mux0_sel=3'd3;
			S8:			     	  
				mux0_sel=u_flag ? 3'd0 : 3'd4;
			S10:			     	  
				mux0_sel=3'd1;
			default:
			  mux0_sel=3'd0;
		endcase
		
	always @(cur_state or u_flag)
		case(cur_state)
			S4,S7,S12,S13:			     	  
				mux1_sel=3'd5;
			S8:			     	  
				mux1_sel=3'd1;
			S9:			     	  
				mux1_sel=3'd3;
			S10:			     	  
				mux1_sel=u_flag ? 3'd0 : 3'd4;
			S11:			     	  
				mux1_sel=3'd2;
			default:
			  mux1_sel=3'd0;
		endcase
endmodule