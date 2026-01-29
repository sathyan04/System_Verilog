module casting_real();
  real realvalue;
  int intvalue;
  time timevalue;
  
  initial begin
    realvalue = 123.123;
    $display("\nBefore casting:");
    $display("\nReal Value	: %0.5f (%b)",realvalue,realvalue);
    $display("\nInt Value	: %0d (%b)",intvalue,intvalue);
    $display("\nTime Value	: %0t (%b)",timevalue,timevalue);
    
    intvalue = int'(realvalue);
	$display("\nReal Value	: %0.5f (%b)",realvalue,realvalue);
    $display("\nInt Value	: %0d (%b)",intvalue,intvalue);
    $display("\nTime Value	: %0t (%b)",timevalue,timevalue);
    
    timevalue = time'(realvalue);
	$display("\nReal Value	: %0.5f (%b)",realvalue,realvalue);
    $display("\nInt Value	: %0d (%b)",intvalue,intvalue);
    $display("\nTime Value	: %0t (%b)",timevalue,timevalue);
    
  end
endmodule
