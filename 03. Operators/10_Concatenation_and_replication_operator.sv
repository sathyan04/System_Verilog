// Concatenation	- {}
// Replication		- {{}}
module concatenation();
  bit [3:0] a = 4'b1011;
  bit [3:0] b = 4'b1100;
  bit c = 1;
  initial begin
    bit [9:0] d, e;
    d = {a,b,c};
    e = {a,b,{2{c}}};
    $display("D = %b (%0d)",d,d);
    $display("E = %b (%0d)",e,e);
  end
endmodule

/*
Output:

D = 0101111001 (377)
E = 1011110011 (755)

*/
