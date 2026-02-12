virtual class parent;
  bit [3:0] data;
  int data1;
  function void display();
    $display("Parent Class: Value of Datas: %0d and %0d",data,data1);
  endfunction
endclass

class child extends parent;
  bit [3:0] data;
  int data1;
  function void display();
    $display("Child Class: Value of Datas: %0d and %0d",data,data1);
  endfunction
endclass

module abstract();
  initial begin
    child c = new();
    c.data = 10;
    c.data1 = 10;
    c.display();
  end
endmodule
