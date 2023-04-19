//32位2选1   1
module MUX21_32(out,sel,a,b);
  output[31:0] out;
  input[31:0] a,b;
  input sel;
  reg [31:0] out;

  always@(sel or a or b)
      case(sel)
          1'b0: out=a;
          1'b1: out=b;          
      endcase
endmodule