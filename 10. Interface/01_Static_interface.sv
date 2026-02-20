module full_adder(variable full);
  assign {full.cout,full.sum} = full.a+full.b+full.c;
endmodule

interface variable;
  logic a, b, c, sum, cout;
endinterface

module adder_tb();
  variable full();
  full_adder dut(full);
  
  initial begin
    $monitor("A=%0d | B=%0d | C=%0d || Sum=%0d | Cout=%0d, Time=%0t",full.a,full.b,full.c,full.sum,full.cout,$time);
    for (int i=0; i<8; i++) begin
      {full.a,full.b,full.c} = i;
      #10;
    end
  end
  
endmodule
