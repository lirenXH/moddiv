module  FA(s,co,a,b,ci);
  output s,co;
  input  a,b,ci;
  
  assign s=a^b^ci;
  assign co=a&b|a&ci|b&ci;
endmodule