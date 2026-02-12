class static_;
  
  static int a;
  int b;
  
  function variable();
    a++;
    b++;
  endfunction
  
endclass

module static_variable();
  static_ s[5];
  initial begin
    foreach(s[i]) begin
      s[i] = new();
      s[i].variable();
      $display("a=%0d and b=%0d",s[i].a,s[i].b);
    end
  end
endmodule
