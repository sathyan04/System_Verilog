module fork_join_none();
 
  initial begin
   
    fork: none
      
      begin: Process_A
        $display("This is Process A");
      end: Process_A
      
      begin: Process_B
        $display("This is Process B");
      end: Process_B
      
    join_none: none
    
    $display("Out of fork join none");
    
  end
  
endmodule
