class this_keyword;

  string switch="OFF";
  string fan="OFF";
  
  function void electricity();
    string switch="ON";
    string fan="ON";
    this.switch=switch;
    this.fan=fan;
    $display("Inside the class: Switch is %s, so fan is %s",switch,fan);
  endfunction
  
endclass

module this_in_class();
  initial begin
  	this_keyword a1 = new();
  	$display("Outside the class: Switch is %s, so fan is %s",a1.switch,a1.fan);
  	a1.electricity();
  end
