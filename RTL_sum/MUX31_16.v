module MUX31_16(out,sel,a,b,c);
  output[15:0] out;
  input[15:0] a,b,c;
  input [1:0] sel;
  reg [15:0] out;

  always@(sel or a or b or c)
      case(sel)
          2'b00: out=a;
          2'b01: out=b;
          2'b10: out=c; 
          default: out=16'hxxxx;       
      endcase
endmodule