module associative_array();
  int assoc[integer]='{3:100, 4:10, 2:1, 1:300};
  int sathyan[string]='{"mahendiran":2000, "vignesh":1000, "thennarasan":500, "dhanush":250};
  
  initial begin
    $display("\n----------------------------------------");
    $display("");
    $display("Associative Array of digits : %p",assoc);
    $display("Associative Array of string : %p",sathyan);
    $display("\n");
    foreach(assoc[i])
      $display("Assoc Array[%0d]	: %0d",i,assoc[i]);
    $display("\n");
    foreach(sathyan[j])
      $display("Sathyan Array[%s]	: %0d",j,sathyan[j]);
    $display("");
    $display("----------------------------------------\n");
  end
endmodule
