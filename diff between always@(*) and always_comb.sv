// Code your testbench here
// or browse Examples
module tb;
  int a,b,c,x,y;
  always@(a) //verilog
    x=a^b^c; //waits till variables triggers
  
  always_comb  //sv
    y=a^b^c; //executes at 0 simulation time
  
  initial begin
    a=0;b=0;c=1;
    #5 a=1;b=0;c=1;
    #5 a=0;b=1;c=0;
    #5 a=1;b=1;c=1;
  end
  
  initial begin
    $monitor("t=%0t,a=%0d,b=%0d,c=%0d,x=%0d,y=%0d",$time,a,b,c,x,y);
  end
endmodule

//output:
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: t=0,a=0,b=0,c=1,x=0,y=1
# KERNEL: t=5,a=1,b=0,c=1,x=0,y=0
# KERNEL: t=10,a=0,b=1,c=0,x=1,y=1
# KERNEL: t=15,a=1,b=1,c=1,x=1,y=1
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
