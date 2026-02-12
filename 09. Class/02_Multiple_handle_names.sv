class testing;
  bit [3:0] data;
  function new();
    data = 4'b1111;
  endfunction
endclass

module testing_module();
  initial begin
    testing t1, t2;
    t1 = new();
    t2 = new();
    $display("T1 data: %b",t1.data);
    $display("T2 data: %b",t2.data);
    t1.data = 4'b0000;
    t2.data = 4'b1010;
    $display("T1 data: %b",t1.data);
    $display("T2 data: %b",t2.data);
  end
endmodule
