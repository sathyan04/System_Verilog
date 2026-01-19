module variable_4_states;
  reg a;
  wire b;
  logic c;
  integer d;
  real e;
  time f;
  
  initial begin
    $display("Default value of reg = %b",a);
    $display("Default value of wire = %b",b);
    $display("Default value of logic = %b",c);
    $display("Default value of integer = %b",d);
    $display("Default value of real = %0f",e);
    $display("Default value of time = %0t",f);
    
    #10;
    
    a=1'b1;
    c=1'b0;
    d=1234;
    e=09.57;
    f=$time;
    
    $display("Initialized value of reg = %b",a);
    $display("Initialized value of wire = %b",b);
    $display("Initialized value of logic = %b",c);
    $display("Initialized value of integer = %0d(%b)",d,d);
    $display("Initialized value of real = %.3f(%b)",e,e);
    $display("Initialized value of time = %0t",f);
    
  end
endmodule
