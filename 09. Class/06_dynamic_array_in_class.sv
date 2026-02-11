class array;
  int data;
endclass

module dynamic_array();
  array a[];
  initial begin
    a=new[5];
    foreach(a[i]) begin
      a[i]=new();
      a[i].data = i**2;
    end
    foreach(a[i]) $display("a[%0d].data = %0d",i,a[i].data);
  end
endmodule
