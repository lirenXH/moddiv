`timescale 1ns / 1ns
module  MINV_MDIV_tb;
  wire [31:0] result_out;  
  wire minv_mdiv_rdy,minv_mdiv_flag;  
  reg [31:0] datain;
  reg  clk,rst,minv_mdiv_en,loada,loadp,out_ready,loadb,minv_mdiv;
  reg [255:0] a,b,p;
  reg [8:0] counter;
  MINV_MDIV  MINV_MDIV(result_out,minv_mdiv_rdy,minv_mdiv_flag,
                       datain,clk,rst,minv_mdiv,minv_mdiv_en,loada,loadb,loadp,out_ready,out_valid);
  //clock generation				   
  initial clk = 1;
  always #50 clk = ~clk;
	
  initial 
    begin 
      counter = 'b0;
      #20   rst=1;
            minv_mdiv_en=0;
            loada=0;
            loadb=0;
            loadp=0;
            out_ready=0;
            minv_mdiv=0;//minv_mdiv=1,represent modular inversion operation, 模逆
                        //minv_mdiv=0,represent modular division operation b/a mod p.模除
                 
      #200  rst=0;
            a=256'h32C4AE2C_1F198119_5F990446_6A39C994_8FE30BBF_F2660BE1_715A4589_334C74C7;
            b=256'hBC3736A2_F4F6779C_59BDCEE3_6B692153_D0A9877C_C62A4740_02DF32E5_2139F0A0;
            //a=256'hBC3736A2_F4F6779C_59BDCEE3_6B692153_D0A9877C_C62A4740_02DF32E5_2139F0A0;
            //b=256'h32C4AE2C_1F198119_5F990446_6A39C994_8FE30BBF_F2660BE1_715A4589_334C74C7;
            p=256'hFFFFFFFE_FFFFFFFF_FFFFFFFF_FFFFFFFF_FFFFFFFF_00000000_FFFFFFFF_FFFFFFFF;
            //a=5;
            //p=11;
            //a=256'h787968b4fa32c3fd2417842e73bbfeff2f3c848b6831d7e0ec65228b3937e498;
            //b=256'h63E4C6D3_B23B0C84_9CF84241_484BFE48_F61D59A5_B16BA06E_6E12D1DA_27C5249A;
            //p=256'h8542d69e_4c044f18_e8b92435_bf6ff7de_45728391_5c45517d_722edb8b_08f1dfc3;            
            //a=256'h421debd6_1b62eab6_746434eb_c3cc315e_32220b3b_add50bdc_4c4e6c14_7fedd43d;
            //b=256'h0680512b_cbb42c07_d47349d2_153b70c4_e5d7fdfc_bfa36ea1_a85841b9_e46e09a2;
            //p=256'h8542d69e_4c044f18_e8b92435_bf6ff7de_45728391_5c45517d_722edb8b_08f1dfc3;
            
            loada=1;    
            datain=a[31:0];        
      #100  datain=a[63:32];
      #100  datain=a[95:64];
      #100  datain=a[127:96];
      #100  datain=a[159:128];
      #100  datain=a[191:160];
      #100  datain=a[223:192];
      #100  datain=a[255:224];//17   
      #100  loada=0;            
            loadp=1;
            datain=p[31:0];   
      #100  datain=p[63:32];
      #100  datain=p[95:64];
      #100  datain=p[127:96];
      #100  datain=p[159:128];
      #100  datain=p[191:160];
      #100  datain=p[223:192];
      #100  datain=p[255:224];//33     
      
      #100  loadp=0;//34        
            loadb=1;
            datain=b[31:0]; 
      #100  datain=b[63:32];
      #100  datain=b[95:64];
      #100  datain=b[127:96];
      #100  datain=b[159:128];
      #100  datain=b[191:160];
      #100  datain=b[223:192];
      #100  datain=b[255:224];//49
      
      #100  loadb=0;
            minv_mdiv_en=1;//50
      #100  minv_mdiv_en=0;

      #641880    
            minv_mdiv=1;  
      #20      minv_mdiv_en=0;//？？？？？？？？延迟
            loada=0;
            loadb=0;
            loadp=0;
            out_ready=0;

            a=256'h32C4AE2C_1F198119_5F990446_6A39C994_8FE30BBF_F2660BE1_715A4589_334C74C7;
            b=256'hBC3736A2_F4F6779C_59BDCEE3_6B692153_D0A9877C_C62A4740_02DF32E5_2139F0A0;
            //a=256'hBC3736A2_F4F6779C_59BDCEE3_6B692153_D0A9877C_C62A4740_02DF32E5_2139F0A0;
            //b=256'h32C4AE2C_1F198119_5F990446_6A39C994_8FE30BBF_F2660BE1_715A4589_334C74C7;
            p=256'hFFFFFFFE_FFFFFFFF_FFFFFFFF_FFFFFFFF_FFFFFFFF_00000000_FFFFFFFF_FFFFFFFF;
            //a=5;
            //p=11;
            //a=256'h787968b4fa32c3fd2417842e73bbfeff2f3c848b6831d7e0ec65228b3937e498;
            //b=256'h63E4C6D3_B23B0C84_9CF84241_484BFE48_F61D59A5_B16BA06E_6E12D1DA_27C5249A;
            //p=256'h8542d69e_4c044f18_e8b92435_bf6ff7de_45728391_5c45517d_722edb8b_08f1dfc3;            
            //a=256'h421debd6_1b62eab6_746434eb_c3cc315e_32220b3b_add50bdc_4c4e6c14_7fedd43d;
            //b=256'h0680512b_cbb42c07_d47349d2_153b70c4_e5d7fdfc_bfa36ea1_a85841b9_e46e09a2;
            //p=256'h8542d69e_4c044f18_e8b92435_bf6ff7de_45728391_5c45517d_722edb8b_08f1dfc3;
            
            loada=1;    
            datain=a[31:0];        
      #100  datain=a[63:32];
      #100  datain=a[95:64];
      #100  datain=a[127:96];
      #100  datain=a[159:128];
      #100  datain=a[191:160];
      #100  datain=a[223:192];
      #100  datain=a[255:224];//17   
      #100  loada=0;            
            loadp=1;
            datain=p[31:0];   
      #100  datain=p[63:32];
      #100  datain=p[95:64];
      #100  datain=p[127:96];
      #100  datain=p[159:128];
      #100  datain=p[191:160];
      #100  datain=p[223:192];
      #100  datain=p[255:224];//33     
      
      #100  loadp=0;//34        
            loadb=1;
            datain=b[31:0]; 
      #100  datain=b[63:32];
      #100  datain=b[95:64];
      #100  datain=b[127:96];
      #100  datain=b[159:128];
      #100  datain=b[191:160];
      #100  datain=b[223:192];
      #100  datain=b[255:224];//49
      
      #100  loadb=0;
            minv_mdiv_en=1;//50
      #100  minv_mdiv_en=0;
      
    end


initial begin
        $fsdbDumpfile("./rtl.fsdb");
        $fsdbDumpvars("+all");
end

  always@(posedge clk)begin
    if(minv_mdiv_rdy==1)
      begin
              out_ready=1;//55
              
        #1500 out_ready=0;//71

      end	
end
always@(posedge clk)begin
   if(counter == 'd15)
      #1000 	$finish;		
end

  always@(posedge clk)begin
    if(minv_mdiv_rdy==1)
      begin
              counter <= counter + 'b1;
      end
  end
endmodule 
