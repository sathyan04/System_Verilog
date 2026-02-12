class parent;
  protected int data=10;
endclass

class child extends parent;
  function void display();
    $display("Value of data inside child: %0d",data);
  endfunction
endclass

module encapsulation();
  initial begin
  	child c;
    c=new();
   	c.data=12; //error will occur
  	c.display();
  end
endmodule
