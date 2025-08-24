`include "FS.v"
module tb1;
reg a,b,bin;
wire diff,borr;
Full_sub dut(.a(a),.b(b),.bin(bin),.diff(diff),.borr(borr));
initial begin
repeat (10)
begin
{a,b,bin}=$random()& 3'b111;
#1
$display("a=%b,bin=%b,b=%b,diff=%b,borr=%b",a,bin,b,diff,borr);
end
end 
endmodule
