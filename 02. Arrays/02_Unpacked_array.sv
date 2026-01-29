module unpacked_array();
	int array[5];
  
  initial begin
    array='{10,20,30,40,50};
    foreach(array[i])
      $display("Array[%0d] = %0d",i,array[i]);
  end
endmodule
