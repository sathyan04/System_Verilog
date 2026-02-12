class deep_copy;
  
  bit [31:0] data1,data2;
  
  function void copy(deep_copy a);
    this.data1 = a.data1;
    this.data2 = a.data2;
  endfunction
  
endclass

module deep();
  initial begin
    deep_copy s1, s2;
    s1 = new();
    s2 = new();
    s1.data1=32'd1234;
    s1.data2=32'd12;
    s2.copy(s1);
    $display("s1: Data1: %0d and Data2: %0d",s1.data1,s1.data2);
    $display("s2: Data1: %0d and Data2: %0d\n",s2.data1,s2.data2);
    s2.data1=32'd57;
    s2.data2=32'd4323;
    $display("s1: Data1: %0d and Data2: %0d",s1.data1,s1.data2);
    $display("s2: Data1: %0d and Data2: %0d",s2.data1,s2.data2);
  end
endmodule
