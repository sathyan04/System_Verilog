class scope;
  static int data;
  static function void display();
    $display("Value of data: %0d",data);
  endfunction
endclass

module scope_resolution();
  initial begin
    scope::data = 1234;
    scope::display();
  end
endmodule
