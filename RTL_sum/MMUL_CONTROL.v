module  MMUL_CONTROL(clk,rst,mmul_en,a255_1_or,a0,c_flag,b_flag,count,
                     rega_we,rega_sel,regb_we,regb_cyc,regb_ls,regp_we,regp_cyc,add_sub,
                     dff1_we,carry_sel,regc_we,regc_cyc,regc_ls,regd_we,regd_cyc,regd_ls,
                     mux3_sel,c_flag_we,b_flag_we,set_mmul_rdy,count_en,mux0_sel,mux1_sel);
  input  clk,rst,mmul_en,a255_1_or,a0;
  input [1:0] c_flag,b_flag;
  input [3:0] count;
  output rega_we,rega_sel,regb_we,regb_cyc,regb_ls,regp_we,regp_cyc,add_sub,
         dff1_we,carry_sel,regc_we,regc_cyc,regc_ls,regd_we,regd_cyc,regd_ls,
         mux3_sel,c_flag_we,b_flag_we,set_mmul_rdy,count_en;
  output [1:0] mux0_sel,mux1_sel;
  
  reg regb_we,regb_cyc,regc_we,regc_cyc,regd_we,regd_cyc; 
  reg [1:0] mux0_sel,mux1_sel; 
  reg [2:0] cur_state,nxt_state;
  
//define parameters   
  parameter  IDLE=3'b000,C_ADD_B=3'b001,C_ADD_B_SUB_P=3'b010,A_RSH_B_LSH=3'b011,B_SUB_P=3'b100;
  
//state register
  always @(posedge clk)
		if(rst)
			cur_state <= IDLE; 
		else
			cur_state <= nxt_state;
			
//next state generation logic
 	always @(cur_state or mmul_en or a0 or a255_1_or or count)
		case(cur_state)
			IDLE:			     	  
				if(mmul_en&a0)
					nxt_state = C_ADD_B; 
				else if(mmul_en&~a0)
					nxt_state = A_RSH_B_LSH; 
				else 
				  nxt_state = IDLE;
			C_ADD_B:
			  if(count==15)
			    nxt_state = C_ADD_B_SUB_P;
			  else
			    nxt_state = C_ADD_B;			
			C_ADD_B_SUB_P:
			  if(count==15)
			    nxt_state = A_RSH_B_LSH;
			  else
			    nxt_state = C_ADD_B_SUB_P;			
			A_RSH_B_LSH:
			  if(a255_1_or)
			    nxt_state = B_SUB_P;
			  else
			    nxt_state = IDLE;			  			
			B_SUB_P:
			  if((count==15)&a0)
			    nxt_state = C_ADD_B;
			  else if((count==15)&~a0)
			    nxt_state = A_RSH_B_LSH;
			  else
			    nxt_state = B_SUB_P; 
			default:
			    nxt_state = IDLE;
		endcase
		
	//control signal generation logic
	assign rega_we=(cur_state==A_RSH_B_LSH)&a255_1_or;
	assign rega_sel=rega_we;
	  
	always @(cur_state or c_flag or b_flag)
		case(cur_state)
			IDLE:			     	  
				regb_we=0;
			C_ADD_B:
			  regb_we=(c_flag==2'b10)|(b_flag==2'b10);		
			C_ADD_B_SUB_P:
			  regb_we=(c_flag==2'b10)|~(b_flag==2'b10);			
			A_RSH_B_LSH:
			  regb_we=(b_flag==2'b10)& a255_1_or;			  			
			B_SUB_P:
			  regb_we=(b_flag==2'b10)|~(c_flag==2'b10); 
			default:
			  regb_we=0;
		endcase
	  
	always @(cur_state or c_flag or b_flag)
		case(cur_state)
			IDLE:			     	  
				regb_cyc=1'b0;
			C_ADD_B:
			  regb_cyc=(c_flag==2'b10)?0:1;			
			C_ADD_B_SUB_P:
			  regb_cyc=(c_flag==2'b10)?1:0;			
			A_RSH_B_LSH:
			  regb_cyc=1'bx;			  			
			B_SUB_P:
			  regb_cyc=(b_flag==2'b10)?1:0; 
			default:
			  regb_cyc=1'bx;
		endcase
		
  assign regb_ls=(cur_state==A_RSH_B_LSH)&(b_flag==2'b10);
  assign regp_we=(cur_state==C_ADD_B_SUB_P)|(cur_state==B_SUB_P);
	assign regp_cyc=regp_we;
	assign add_sub=regp_we;
	assign dff1_we=(cur_state==C_ADD_B)&(count==15);
	assign carry_sel=((cur_state==C_ADD_B)|(cur_state==C_ADD_B_SUB_P)|(cur_state==B_SUB_P))&(count==0);
		
	always @(cur_state or c_flag or b_flag)
	  case(cur_state)
			IDLE:			     	  
				regc_we=1'b0;
			C_ADD_B:
			  regc_we=(c_flag==2'b00)|(b_flag==2'b00);			
			C_ADD_B_SUB_P:
			  regc_we=(c_flag==2'b00)|~(b_flag==2'b00);			
			A_RSH_B_LSH:
			  regc_we=(b_flag==2'b00) & a255_1_or;			  			
			B_SUB_P:
			  regc_we=(b_flag==2'b00)|~(c_flag==2'b00); 
			default:
			  regc_we=1'b0;
		endcase
		
	always @(cur_state or c_flag or b_flag)
		case(cur_state)
			C_ADD_B:
			  regc_cyc=(c_flag==2'b00)?0:1;			
			C_ADD_B_SUB_P:
			  regc_cyc=(c_flag==2'b00)?1:0;			
			B_SUB_P:
			  regc_cyc=(b_flag==2'b00)?1:0; 
			default:
			  regc_cyc=1'b0;
		endcase
		
	assign regc_ls=(cur_state==A_RSH_B_LSH)&(b_flag==2'b00);
		
	always @(cur_state or c_flag or b_flag)
		case(cur_state)
			IDLE:			     	  
				regd_we=1'b0;
			C_ADD_B:
			  regd_we=(c_flag==2'b01)|(b_flag==2'b01);			
			C_ADD_B_SUB_P:
			  regd_we=(c_flag==2'b01)|~(b_flag==2'b01);			
			A_RSH_B_LSH:
			  regd_we=(b_flag==2'b01) & a255_1_or;			  			
			B_SUB_P:
			  regd_we=(b_flag==2'b01)|~(c_flag==2'b01); 
			default:
			  regd_we=1'b0;
		endcase
		
	always @(cur_state or c_flag or b_flag)
		case(cur_state)
			C_ADD_B:
			  regd_cyc=(c_flag==2'b01)?0:1;			
			C_ADD_B_SUB_P:
			  regd_cyc=(c_flag==2'b01)?1:0;			
			B_SUB_P:
			  regd_cyc=(b_flag==2'b01)?1:0; 
			default:
			  regd_cyc=1'b0;
		endcase
		
	assign regd_ls=(cur_state==A_RSH_B_LSH)&(b_flag==2'b01);
	assign c_flag_we=(cur_state==C_ADD_B_SUB_P)&(count==15);
	assign b_flag_we=(cur_state==B_SUB_P)&(count==15);
	assign set_mmul_rdy=(cur_state==A_RSH_B_LSH) & ~a255_1_or;
		
	always @(cur_state or c_flag or b_flag)
		case(cur_state)
			C_ADD_B:
			  mux0_sel=c_flag;			
			C_ADD_B_SUB_P:
			  mux0_sel=c_flag;			
			B_SUB_P:
			  mux0_sel=b_flag; 
			default:
			  mux0_sel=2'bxx;
		endcase
		
	always @(cur_state or b_flag)
		case(cur_state)
			C_ADD_B:
			  mux1_sel=b_flag;			
			C_ADD_B_SUB_P:
			  mux1_sel=2'b11;			
			B_SUB_P:
			  mux1_sel=2'b11; 
			default:
			  mux1_sel=2'bxx;
		endcase
		
	assign count_en=(cur_state==C_ADD_B)|(cur_state==C_ADD_B_SUB_P)|(cur_state==B_SUB_P);
	assign mux3_sel=count_en;		
endmodule