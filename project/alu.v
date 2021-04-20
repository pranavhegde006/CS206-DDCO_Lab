module alu(output [7:0] out, input [7:0] a, b, input cin); 
    assign out = a + b + cin;
endmodule
