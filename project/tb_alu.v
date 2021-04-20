module testbench;
    reg [7:0] sum;
    reg clk, start;
    reg [7:0] a, b;
    wire [15:0] ab;
    wire busy;
    alu adder (sum, a, b, 1'b0)

    initial begin $dumpfile("dmp2.vcd");
        $dumpvars(0,testbench);
    end

    initial begin
        clk = 0;
        $display("first example: a = 3 b = 17");
        a = 3; b = 17; start = 1; #50 start = 0;
        #80 $display("first example done");
        $display("second example: a = 7 b = 7");
        a = 7; b = 7; start = 1; #50 start = 0;
        #80 $display("second example done");
        $finish;
    end

    always #5 clk = !clk;
    always @(posedge clk) $strobe("sum: %d at time=%t", sum, $stime);
endmodule