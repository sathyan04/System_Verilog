module conditional();
  int a=300;
  bit [8:0] b='d300;
  
  initial begin
    string x = a==b ? "Similar" : "Different" ;
    $display("%s",x);
  end
  
endmodule

/*
Output:

Similar

*/
