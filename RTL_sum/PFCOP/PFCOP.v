
module  PFCOP(dataout,madd_msub_rdy,mmul_rdy,minv_mdiv_rdy,clk,rst,load_en,load_addr,
              datain,madd_en,msub_en,mmul_en,minv_mdiv,minv_mdiv_en,out_en,out_addr);
  output [15:0] dataout;
  output madd_msub_rdy,mmul_rdy,minv_mdiv_rdy;
  input clk,rst,load_en,madd_en,msub_en,mmul_en,minv_mdiv,minv_mdiv_en,out_en;
  input [3:0] load_addr;
  input [15:0] datain;
  input [1:0] out_addr;
  
  wire [15:0] regs0out,regs1out,madd_msub_out;
  wire result_flag;
  wire [15:0] regcout,regdout,regbout,mmul_out;
  wire [1:0] c_flag;
  wire [15:0] regx1out,regx2out,minv_mdiv_out;  
  wire minv_mdiv_flag,outs0s1,outcdb,outx1x2;  
  wire [8:0] decoderout,load;
   
  DECODER decoder(decoderout,load_addr); 
  assign load=decoderout & {9{load_en}};
  MADD_MSUB  MADD_MSUB(regs0out,regs1out,madd_msub_rdy,result_flag,load[0],load[1],
                       load[2],datain,outs0,outs1,clk,rst,madd_en,msub_en);  
  MUX21_16  mux0(madd_msub_out,result_flag,regs0out,regs1out);  
  MMUL  MMUL(regcout,regdout,regbout,c_flag,mmul_rdy,datain,clk,rst,
             mmul_en,load[3],load[4],load[5],outc,outd,outb);                  
  MUX31_16  mux1(mmul_out,c_flag,regcout,regdout,regbout);  
  MINV_MDIV  MINV_MDIV(regx1out,regx2out,minv_mdiv_rdy,minv_mdiv_flag,datain,clk,rst,minv_mdiv,
                       minv_mdiv_en,load[6],load[7],load[8],outx1,outx2);                       
  MUX21_16  mux2(minv_mdiv_out,minv_mdiv_flag,regx1out,regx2out);  
  MUX31_16  mux3(dataout,out_addr,madd_msub_out,mmul_out,minv_mdiv_out);
  
  assign outs0s1=out_en & (~out_addr[1]) & (~out_addr[0]);
  assign outs0=outs0s1 & (~result_flag);
  assign outs1=outs0s1 & result_flag;
  
  assign outcdb=out_en & (~out_addr[1]) & out_addr[0];
  assign outc=outcdb & (~c_flag[1]) & (~c_flag[0]);
  assign outd=outcdb & (~c_flag[1]) & c_flag[0];
  assign outb=outcdb & c_flag[1] & (~c_flag[0]);
  
  assign outx1x2=out_en & out_addr[1] & (~out_addr[0]);
  assign outx1=outx1x2 & (~minv_mdiv_flag);
  assign outx2=outx1x2 & minv_mdiv_flag;
endmodule

module DECODER(out,in);
    output [8:0] out;
    input [3:0] in;
    reg [8:0] out;
    
    always @(in)
		  case(in)
			   4'd0: out=9'b0_0000_0001;
			   4'd1: out=9'b0_0000_0010;
			   4'd2: out=9'b0_0000_0100;
			   4'd3: out=9'b0_0000_1000;
			   4'd4: out=9'b0_0001_0000;
			   4'd5: out=9'b0_0010_0000;
			   4'd6: out=9'b0_0100_0000;
			   4'd7: out=9'b0_1000_0000;
			   4'd8: out=9'b1_0000_0000;					
			   default: out=9'b0_0000_0000;
			endcase	
endmodule


