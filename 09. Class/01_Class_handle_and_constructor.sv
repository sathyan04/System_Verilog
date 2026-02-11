class batch10;
  string students;
  task attendance();
    $display("All are present");
  endtask
endclass

module class_example();
  
  batch10 fresher;
  initial begin
    $display("\nClass initiated\n");
    fresher=new();
    if(fresher==null) begin
      $display("Object is empty");
    end
    else begin
      $display("Object is full");
    end
    $display("\nClass ended\n");
  end
  
endmodule
