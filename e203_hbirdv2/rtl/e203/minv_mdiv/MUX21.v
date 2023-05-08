//1位 2选1  1
module MUX21(out,sel,a,b);
  output out;
  input a,b;
  input sel;
  reg out;

  always@(sel or a or b)
      case(sel)
          1'b0: out=a;
          1'b1: out=b;          
      endcase
endmodule