class shallow;
  bit [31:0] data1;
  int data2;
  function new();
    data1=100;
    data2=200;
  endfunction
endclass

module shallow_copy();
  initial begin
    shallow s1, s2;
    s1 = new();
    s2 = new s1;
    $display("s1: Data1 = %0d and Data2 = %0d",s1.data1,s1.data2);
    $display("s2: Data1 = %0d and Data2 = %0d",s2.data1,s2.data2);
    //
    s1.data1=10;
    s2.data2=12;
    $display("s1: Data1 = %0d and Data2 = %0d",s1.data1,s1.data2);
    $display("s2: Data1 = %0d and Data2 = %0d",s2.data1,s2.data2);
  end
endmodule
