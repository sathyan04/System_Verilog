module casting_bit_to_byte();
  byte bytevalue;
  bit [3:0]bitvalue;
  
  initial begin
    bitvalue = 4'b1010;
    $display("\nBefore Casting\n");
    $display("\nBit Value	: %0d (%b)",bitvalue, bitvalue);
    $display("\nByte Value	: %0d (%b)",bytevalue, bytevalue);
    bytevalue = byte'(bitvalue);
    $display("\nAfter Casting\n");
    $display("\nBit Value	: %0d (%b)",bitvalue, bitvalue);
    $display("\nByte Value	: %0d (%b)",bytevalue, bytevalue);
  end
endmodule
