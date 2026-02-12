class parent;
  int value1;
  function void parent_display();
    $display("Value of parent: %0d",value1);
  endfunction
endclass

class child extends parent;
  int value2;
  function void child_display();
    $display("Value of child: %0d",value2);
  endfunction
endclass

module inheritence();
  initial begin
    child c;
    c = new();
    c.value1=100;
    c.value2=200;
    c.parent_display();
    c.child_display();
  end
endmodule
