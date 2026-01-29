module casting_integer();
  integer integervalue,integervalue1;
  int intvalue,intvalue1;
  
  initial begin
    
    integervalue = 'b1011101110xzz;
    $display("\nBefore casting integer to int:");
    $display("\nInteger value		: %0d (%b)", integervalue, integervalue);
    $display("\nInt value			: %0d (%b)", intvalue, intvalue);
    intvalue = int'(integervalue);
    $display("\nAfter casting integer to int:");
    $display("\nInteger value		: %0d (%b)", integervalue, integervalue);
    $display("\nInt value			: %0d (%b)", intvalue, intvalue);
    
    $display("\n----------------------------------------------------------");
    
    intvalue1 = 'b1100;
    $display("\nBefore casting int to integer:");
    $display("\nInt value		: %0d (%b)", intvalue1, intvalue1);
    $display("\nInteger value	: %0d (%b)", integervalue1, integervalue1);
    integervalue1 = integer'(intvalue1);
    $display("\nAfter casting integer to int:");
    $display("\nInt value		: %0d (%b)", intvalue1, intvalue1);
    $display("\nInteger value	: %0d (%b)", integervalue1, integervalue1);
  end
endmodule
