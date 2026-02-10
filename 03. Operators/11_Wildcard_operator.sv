module wildcard_operator();
  logic [7:0] a, b;
  logic [7:0] c, d;
  initial begin
    a='hff; b='hxx;
    c='hxx; d='hff;
    $display("\na=%b and b=%b",a,b);
    $display("Does a and b are equals...?		:	%0d",a==?b);
    $display("Does a and b are not equals...?	:	%0d\n",a!=?b);
    $display("c=%b and d=%b",c,d);
    $display("Does a and b are equals...?		:	%0d",c==?d);
    $display("Does a and b are not equals...?	:	%0d\n",c!=?d);
  end
endmodule

/*
Output:

a=11111111 and b=xxxxxxxx
Does a and b are equals...?		:	1
Does a and b are not equals...?	:	0

c=xxxxxxxx and d=11111111
Does a and b are equals...?		:	x
Does a and b are not equals...?	:	x

*/
