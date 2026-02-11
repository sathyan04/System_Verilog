class methods;
  
  bit [7:0] data;
  
  task values(bit [7:0] module_data);
    data = module_data;
  endtask
  
  function print(methods m1);
    $display("Value of m1: %b",m1.data);
  endfunction

endclass

module class_example;
  initial begin
    methods me = new();
    me.values(255);
    me.print(me);
  end
endmodule
