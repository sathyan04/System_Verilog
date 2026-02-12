class parent;
  bit [3:0] data1;
  int data2;
  virtual function void display();
    $display("Parent Class: Value of Data1: %0d and Data 2: %0d",data1,data2);
  endfunction
endclass

class child extends parent;
  bit [3:0] data1;
  int data2;
  function void display();
    $display("Child Class: Value of Data1: %0d and Data2: %0d",data1,data2);
  endfunction
endclass

parent p1;
child c1;

module virtual_key();
  initial begin
    c1 = new();
    p1=c1;
    c1.data1=11;
    c1.data2=12;
    p1.data1=10;
    p1.data2=20;
    p1.display();
  end
endmodule
