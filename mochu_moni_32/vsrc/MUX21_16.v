//16位2选1
module MUX21_16(out,sel,a,b);
  output[15:0] out;
  input[15:0] a,b;
  input sel;
  reg [15:0] out;

  always@(sel or a or b)
      case(sel)
          1'b0: out=a;
          1'b1: out=b;          
      endcase
endmodule