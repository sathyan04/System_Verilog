// Code your testbench here
// or browse Examples
module array_ordering();
  int arr[$]={1,5,2,3,7,9,4,8,6};
  
  initial begin
    arr.reverse();
    $display("\nReverse		: %p",arr);
    arr.sort();
    $display("\nSorting		: %p",arr);
    arr.rsort();
    $display("\nReverse Sort: %p",arr);
    arr.shuffle();
    $display("\nShuffling	: %p",arr);
    $display("");
  end
endmodule
