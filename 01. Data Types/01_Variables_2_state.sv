module vaiable_2_states;
  bit      	a;		// >=1 bit unsigned
  byte      b;		// 8 bit signed
  shortint	c;		// 16 bit signed
  int 		d;		// 32 bit signed
  longint  	e;		// 64 bit signed 
    
  initial begin
    
    $display("\nDefault value of bit 	  = %b", a);
    $display("Default value of byte 	  = %0d(%b)", b, b);
    $display("Default value of int 		  = %0d(%b)", c, c);
    $display("Default value of shortint = %0d(%b)", d, d);
    $display("Default value of longint 	= %0d(%b)", e, e);
    
    #10;
    
  	a = 1'b1;
  	b = 121;
  	c = 12321;
    d = 1234321;
	  e = 123454321;
    
    $display("\nAfter initialize value of bit 	 = %b", a);
    $display("After initialize value of byte 	   = %0d(%b)", b, b);
    $display("After initialize value of int 	   = %0d(%b)", c, c);
    $display("After initialize value of shortint = %0d(%b)", d, d);
    $display("After initialize value of longint  = %0d(%b)", e, e);
    
  end
endmodule
