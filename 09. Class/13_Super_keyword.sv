class parent;
  bit[3:0] data;
  
  function void display();
    $display("Parent class data: %0d",data);
  endfunction
  
endclass

class child extends parent;
  bit [3:0] data;
  
  function void display();
    super.data = 10;
    super.display();
    $display("Child class data: %0d",data);
  endfunction
  
endclass

module super_key();
  initial begin
    child c;
    c = new();
    c.data=15;
    c.display();
  end
endmodule
