// Code your testbench here
// or browse Examples
class fifo;
  int intQ[$];
  function void put(int a);
    intQ.push_back(a);
  endfunction
  function void get(output int a);
   a=intQ.pop_front();
  endfunction
endclass

module tb;
  fifo fifo_h=new();
  int num;
  initial begin
    repeat(5) begin
      num=$urandom_range(100,200);
      fifo_h.put(num);
      $display("num=%0d",num);
    end
    repeat(5)begin
      fifo_h.get(num);
      $display("num=%0d",num);
    end
  end
endmodule
      
  //output:
# KERNEL: num=137
# KERNEL: num=104
# KERNEL: num=128
# KERNEL: num=102
# KERNEL: num=164
# KERNEL: num=137
# KERNEL: num=104
# KERNEL: num=128
# KERNEL: num=102
# KERNEL: num=164
