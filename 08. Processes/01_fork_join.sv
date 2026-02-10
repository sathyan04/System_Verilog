module fork_join();
  
  initial begin
    
    fork: fork_join
      
      begin: Process_A
        $display("This is Process A");
        #10;
        $display("Process A Completed");
      end: Process_A
      
      begin: Process_B
        $display("This is Process B");
        #11;
        $display("Process B Completed");
      end: Process_B
      
      begin: Process_C
        $display("This is Process C");
        #12;
        $display("Process C Completed");
      end: Process_C
      
    join: fork_join
    
  end
  
endmodule
