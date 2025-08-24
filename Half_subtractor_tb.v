`include "HS.v"
module tb;
reg a,b;
wire diff,borr;
half_subtractor dut(.a(a),.b(b),.diff(diff),.borr(borr));
initial 
repeat(10) begin
{a,b}= $random();
#1
$display("a=%b,b=%b,diff=%b,,borr=%b",a,b,diff,borr);
end
endmodule
