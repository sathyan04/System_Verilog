// Code your testbench here
// or browse Examples
module dynamic_array();
  int array[];
  
  initial begin
    array=new[8];
    array='{1,2,3,4,5,6,7,8};
    $display("\nArray Elements: %p",array);
    $display("\nSize of array: %0d",array.size());
    array=new[10](array);
    $display("\nArray Elements: %p",array);
    $display("\nSize of array: %0d",array.size());
    array={};
    $display("\nArray Elements: %p",array);
    $display("\nSize of array: %0d\n",array.size());
  end
endmodule
    
