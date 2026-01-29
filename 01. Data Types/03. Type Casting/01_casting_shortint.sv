module casting();
  int intvalue;
  shortint shortintvalue;
  longint longintvalue;
  
  initial begin
    shortintvalue = 'b11111;
    $display("\nShort Int value before casting			: %0d (%b)\n",shortintvalue,shortintvalue);
    intvalue = int'(shortintvalue);
    $display("\nShort Int value after casting to int	: %0d (%b)\n",intvalue,intvalue);
    longintvalue = longint'(shortintvalue);
    $display("\nShort Int value after casting to long	: %0d (%b)\n",longintvalue,longintvalue);
  end
endmodule
