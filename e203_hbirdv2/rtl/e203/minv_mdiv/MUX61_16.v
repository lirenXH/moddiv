//32位 6选1 1
module MUX61_32(out,sel,a,b,c,d,e,f);
  output[31:0] out;
  input[31:0] a,b,c,d,e,f;
  input [2:0] sel;
  reg [31:0] out;

  always@(sel or a or b or c or d or e or f)
      case(sel)
          3'b000: out=a;
          3'b001: out=b;
          3'b010: out=c; 
          3'b011: out=d;
          3'b100: out=e;
          3'b101: out=f;          
          default: out=32'h0000_0000;       
      endcase
endmodule