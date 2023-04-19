//16位 4选1
module MUX41_16(out,sel,a,b,c,d);
  output[15:0] out;
  input[15:0] a,b,c,d;
  input [1:0] sel;
  reg [15:0] out;

  always@(sel or a or b or c or d)
      case(sel)
          2'b00: out=a;
          2'b01: out=b;
          2'b10: out=c; 
          2'b11: out=d;       
      endcase
endmodule