class handle;
  string sathyan;
endclass

module multi();
  initial begin
    handle s1, s2;
    s1=new();
    s1.sathyan = "Hello";
    $display("\nThis is s1: %s\n",s1.sathyan);
    s2=s1;
    $display("\nThis is s2: %s\n",s2.sathyan);
    s2.sathyan = "World";
    $display("\nThis is s2: %s\n",s2.sathyan);
  end
endmodule
