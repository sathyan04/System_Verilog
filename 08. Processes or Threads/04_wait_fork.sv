module fork_join_any();
  
  initial begin
    
    fork: fork_join_any
      
      begin: Part_A
        
        $display("This is Part A");
        #10;
        $display("Part A process completed");
        
      end: Part_A
      
      begin: Part_B
        
        $display("This is Part B");
        #11;
        $display("Part B process completed");
        
      end: Part_B
      
      begin: Part_C
        
        $display("This is Part C");
        #12;
        $display("Part C process completed");
        
      end: Part_C
      
    join_any: fork_join_any
    
    wait fork;
      
    $display("\nFork join any process over\n");
    
  end
  
endmodule
