module reduction();
  bit [3:0] a = 4'b1011;
  initial begin
    $display("Reduction Operator\n");
    $display("Value of A	: %b\n",a);
    $display("AND of A		: %b",&a);
    $display("NAND of A		: %b",~&a);
    $display("OR of A		: %b",|a);
    $display("NOR of A		: %b",~|a);
    $display("XOR of A		: %b",^a);
    $display("XNOR of A		: %b",~^a);
  end
endmodule

/*
Output:

Reduction Operator

Value of A	: 1011

AND of A		: 0
NAND of A		: 1
OR of A		  : 1
NOR of A		: 0
XOR of A		: 1
XNOR of A		: 0

*/
