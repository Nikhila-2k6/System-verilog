// Code your testbench here
// or browse Examples
/*module tb;
  int a,b;
  initial begin
    a=9;
    b=6;
    $display("a=%0d,b=%0d",a,b);
    b=a;
    $display("a=%0d,b=%0d",a,b);
    a=20;
    b=a;
    $display("b=%0d",b);
  end
endmodule*/
//output:
# KERNEL: a=9,b=6
# KERNEL: a=9,b=9
# KERNEL: b=20

module tb;
  int a,b;
  initial begin
    $monitor("a=%0d,b=%0d",a,b);
    a=9;
    b=6;
    b=a;
    a=20;
    b=a;
  end
endmodule

//output:
# KERNEL: a=20,b=20
