class array;
  int mul, add;
endclass

module fixed_array();
  initial begin
    array a[5];
    foreach(a[i]) begin
      a[i] = new();
      a[i].mul = i*i;
      a[i].add = i+i;
      $display("a[%0d].mul = %0d, a[%0d].add = %0d",i,a[i].mul,i,a[i].add);
    end
  end
endmodule
