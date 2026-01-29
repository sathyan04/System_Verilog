module unpacked_array();
  bit array[4][8];
  
  initial begin
    array='{'{1,1,1,1,1,1,1,1},'{1,0,1,0,1,0,1,0},'{1,1,1,1,0,0,0,0},'{1,1,0,0,1,1,0,0}};
    $display("Original Array: %p",array);
    foreach(array[i,j])
      $display("array[%0d][%0d]: %b",i,j,array[i][j]);
  end
endmodule
