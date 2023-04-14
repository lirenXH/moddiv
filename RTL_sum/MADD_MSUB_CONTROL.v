module  MADD_MSUB_CONTROL(clk,rst,madd_en,msub_en,sign_a_b,sign_a_b_p,count,
                          rega_we,regb_we,regp_we,regs0_we,regs1_we,dff1_we,carry_sel,
                          rega_cyc,regb_cyc,regp_cyc,regs0_cyc,regs1_cyc,mux0_sel,mux1_sel,add_sub,count_en,result_rdy,result_flag);
  output rega_we,regb_we,regp_we,regs0_we,regs1_we,dff1_we,carry_sel,
         rega_cyc,regb_cyc,regp_cyc,regs0_cyc,regs1_cyc,mux0_sel,mux1_sel,add_sub,count_en,result_rdy,result_flag;  
  input  clk,rst,madd_en,msub_en,sign_a_b,sign_a_b_p;
  input [3:0] count; 
  wire set_result_rdy,write_result_flag,result_flag_in;
  reg result_rdy,result_flag;  
  reg [2:0] cur_state,nxt_state;
  
//define parameters   
  parameter  IDLE=3'b000,A_ADD_B=3'b001,A_ADD_B_SUB_P=3'b010,A_SUB_B=3'b011,A_SUB_B_ADD_P=3'b100;
  
//state register
  always @(posedge clk)
		if(rst)
			cur_state <= IDLE; 
		else
			cur_state <= nxt_state;
			
//next state generation logic
  	always @(cur_state or madd_en or msub_en or sign_a_b or sign_a_b_p or count)
		case(cur_state)
			IDLE:			     	  
				if(madd_en)
					nxt_state = A_ADD_B; 
				else if(msub_en)
					nxt_state = A_SUB_B; 
				else 
				  nxt_state = IDLE;
			A_ADD_B:
			  if(count==15)
			    nxt_state = A_ADD_B_SUB_P;
			  else
			    nxt_state = A_ADD_B;			
			A_ADD_B_SUB_P:
			  if(count==15)
			    nxt_state = IDLE;
			  else
			    nxt_state = A_ADD_B_SUB_P;			
			A_SUB_B:
			  if((count==15)&(sign_a_b==1))
			    nxt_state = A_SUB_B_ADD_P;
			  else if((count==15)&(sign_a_b==0))
			    nxt_state = IDLE;
			  else
			    nxt_state = A_SUB_B;			
			A_SUB_B_ADD_P:
			  if(count==15)
			    nxt_state = IDLE;
			  else
			    nxt_state = A_SUB_B_ADD_P; 
			default:
			    nxt_state = IDLE;
		endcase
		
	//control signal generation logic
	  assign rega_we=(cur_state==A_ADD_B)|(cur_state==A_SUB_B);
	  assign regb_we=rega_we;
	  assign rega_cyc=rega_we;
	  assign regb_cyc=rega_we;
	  assign regp_we=(cur_state==A_ADD_B_SUB_P)|(cur_state==A_SUB_B_ADD_P);
	  assign regs1_we=regp_we;
	  assign regs1_cyc=0;
	  assign regp_cyc=regp_we;
	  assign mux0_sel=regp_we;
	  assign mux1_sel=regp_we;
	  assign regs0_we=(cur_state==A_ADD_B)|(cur_state==A_SUB_B)|(cur_state==A_ADD_B_SUB_P)|(cur_state==A_SUB_B_ADD_P);
	  assign count_en=regs0_we;
	  assign regs0_cyc=regp_we;
	  assign dff1_we=(cur_state==A_ADD_B)&(count==15);
	  assign carry_sel=(count==0);	  
	  assign add_sub=(cur_state==A_SUB_B)|(cur_state==A_ADD_B_SUB_P);
	  assign set_result_rdy=(((cur_state==A_SUB_B)&(sign_a_b==0))|(cur_state==A_ADD_B_SUB_P)|(cur_state==A_SUB_B_ADD_P))&(count==15);
	  assign write_result_flag=set_result_rdy;
	  assign result_flag_in=((cur_state==A_ADD_B_SUB_P)&(~sign_a_b_p))|(cur_state==A_SUB_B_ADD_P);
	
	//flag register
	  always @(posedge clk)
		  if(rst)
			  result_rdy <= 0; 
		  else if(set_result_rdy)
			  result_rdy <= 1;
			else if(madd_en|msub_en)
			  result_rdy <= 0;
			else
			  result_rdy <= result_rdy;
		
		always @(posedge clk)
		  if(write_result_flag)
			  result_flag <= result_flag_in;
			else
			  result_flag <= result_flag;		
endmodule