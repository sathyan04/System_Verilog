module packed_array();
  logic [7:0] array;
  
  initial begin
    array = 8'b11001100;
    $display("Packed Array Values: %b",array);
  end
endmodule
