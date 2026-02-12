class external;
  bit [3:0] data;
  extern function void display();
endclass
    
function void external::display();
  $display("Value of data: %0d",data);
endfunction

module ext();
  initial begin
    external e=new();
    e.data = 4'b1111;
    e.display();
  end
endmodule
