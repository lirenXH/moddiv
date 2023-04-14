`timescale 1ns / 1ns
module  MINV_sim_tb;
  wire [15:0] regtout_16,regx1out,regx2out;  
  wire minv_rdy;  
  wire [1:0] minv_flag;  
  reg [15:0] datain;
  reg  clk,rst,minv_en,loada,loadp,outx1,outx2,outt;
  reg [255:0] a,p;
    
  wire [255:0] u,regvout;
  wire temp_sign,x1_sign,x2_sign,u_flag;
  wire regu_we,regu_cyc,regu_rs,regv_we,regv_cyc,regv_rs,regp_we,regp_cyc,
       regx1_we,regx1_cyc,regx1_rs,regx2_we,regx2_cyc,regx2_rs,regt_we,regt_cyc,regt_rs,
       add_sub,carry_sel,mux3_sel,mux4_sel,u_flag_set,minv_flag_we,set_minv_rdy,
       regx1_h2b_we,regx2_h2b_we,regu_h2b_we,regt_h2b_we,count_en,
       regx1_h2b_rs_en,regx2_h2b_rs_en,regu_h2b_rs_en,regt_h2b_rs_en;         
  
  wire [3:0] cur_state,count;  
  
  MINV_sim  MINV_sim(regx1out,regx2out,regtout_16,minv_rdy,minv_flag,
              datain,clk,rst,minv_en,loada,loadp,outx1,outx2,outt,
              u,regvout,temp_sign,x1_sign,x2_sign,u_flag,
              regu_we,regu_cyc,regu_rs,regv_we,regv_cyc,regv_rs,regp_we,regp_cyc,
              regx1_we,regx1_cyc,regx1_rs,regx2_we,regx2_cyc,regx2_rs,regt_we,regt_cyc,regt_rs,
              add_sub,carry_sel,mux3_sel,mux4_sel,u_flag_set,minv_flag_we,set_minv_rdy,
              regx1_h2b_we,regx2_h2b_we,regu_h2b_we,regt_h2b_we,count_en,
              regx1_h2b_rs_en,regx2_h2b_rs_en,regu_h2b_rs_en,regt_h2b_rs_en,
              cur_state,count);
  
  //clock generation				   
  initial clk = 1;
  always #50 clk = ~clk;
	
  initial 
    begin 
      #20   rst=1;
            minv_en=0;
            loada=0;
            loadp=0;
            outx1=0;
            outx2=0;
            outt=0;     
      #200  rst=0;
            //a=256'h32C4AE2C_1F198119_5F990446_6A39C994_8FE30BBF_F2660BE1_715A4589_334C74C7;
            //a=256'hBC3736A2_F4F6779C_59BDCEE3_6B692153_D0A9877C_C62A4740_02DF32E5_2139F0A0;
            //p=256'hFFFFFFFE_FFFFFFFF_FFFFFFFF_FFFFFFFF_FFFFFFFF_00000000_FFFFFFFF_FFFFFFFF;
            //a=5;
            //p=11;
            a=256'h787968B4_FA32C3FD_2417842E_73BBFEFF_2F3C848B_6831D7E0_EC65228B_3937E498;
            p=256'h8542D69E_4C044F18_E8B92435_BF6FF7DE_45728391_5C45517D_722EDB8B_08F1DFC3;            
            datain=a[15:0];
            loada=1;            
      #100  datain=a[31:16];
      #100  datain=a[47:32];
      #100  datain=a[63:48];
      #100  datain=a[79:64];
      #100  datain=a[95:80];
      #100  datain=a[111:96];
      #100  datain=a[127:112];
      #100  datain=a[143:128];
      #100  datain=a[159:144];
      #100  datain=a[175:160];
      #100  datain=a[191:176];
      #100  datain=a[207:192];
      #100  datain=a[223:208];
      #100  datain=a[239:224];
      #100  datain=a[255:240];      
      #100  loada=0;            
            loadp=1;
            datain=p[15:0];
      #100  datain=p[31:16];
      #100  datain=p[47:32];
      #100  datain=p[63:48];
      #100  datain=p[79:64];
      #100  datain=p[95:80];
      #100  datain=p[111:96];
      #100  datain=p[127:112];
      #100  datain=p[143:128];
      #100  datain=p[159:144];
      #100  datain=p[175:160];
      #100  datain=p[191:176];
      #100  datain=p[207:192];
      #100  datain=p[223:208];
      #100  datain=p[239:224];
      #100  datain=p[255:240];      
      #100  loadp=0;
            minv_en=1;
      #100  minv_en=0;
    end
  always@(posedge clk)
    if(minv_rdy==1)
      begin
        #200 	outx1=1;
              outx2=1;
              outt=1;
        #1500 outx1=0;
              outx2=0;
              outt=0;
        #200 	$finish;
      end			
endmodule 
