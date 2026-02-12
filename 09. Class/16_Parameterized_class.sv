class parameterized #(parameter width = 8, type variable = string);
  bit [width -1 : 0] data;
  variable language;
  function new();
    data=8'b11111111;
    language = "English";
  endfunction
  function void display();
    $display("Datas with parameterized width and type : %b and %s",data,language);
  endfunction
endclass

parameterized #(4) p;
module para();
  initial begin
  	p = new();
  	p.display();
  end
endmodule
