class parent;
  local int data=10;
endclass

class child extends parent;
  function void display();
    $display("Value of data inside child: %0d",data); // error will occur
  endfunction
endclass

module encapsulation();
  initial begin
  	child c;
    c=new();
  	c.display();
  end
endmodule
