typedef logic [7:0]myint;

module userdefined_data_types();
  myint a,b,c;
  
  initial begin
    a=8'd57;
    b=8'd9;
    c=a+b;
    
    $display("Value of a: %d",a);
    $display("Value of b: %d",b);
    $display("Value of c: %d",c);
    
  end
endmodule
