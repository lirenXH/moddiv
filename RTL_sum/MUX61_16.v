module MUX61_16(out,sel,a,b,c,d,e,f);
  output[15:0] out;
  input[15:0] a,b,c,d,e,f;
  input [2:0] sel;
  reg [15:0] out;

  always@(sel or a or b or c or d or e or f)
      case(sel)
          3'b000: out=a;
          3'b001: out=b;
          3'b010: out=c; 
          3'b011: out=d;
          3'b100: out=e;
          3'b101: out=f;          
          default: out=16'hxxxx;       
      endcase
endmodule