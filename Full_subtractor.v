# `include "HS.v" #or add the design of HS so that we can use that for FS
module Full_sub(a,b,bin,diff,borr);
input a,b,bin;
output diff,borr;
assign diff=a^b^bin;
assign borr=(~a&b)|(~a&bin)|(b&bin);
endmodule

