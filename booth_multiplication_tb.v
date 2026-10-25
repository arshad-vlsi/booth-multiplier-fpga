
`timescale 1ns / 1ps

module tb;

    reg clk;
    reg rst;
    reg signed [3:0] m;
    reg signed [3:0] q;
    wire [7:0] y;

    booth_multiplication dut (
        .clk(clk),
        .rst(rst),
        .m(m),
        .q(q),
        .y(y)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1;
        m = 0;
        q = 0;

        #10;
        rst = 0;

        m = 3;  q = 2;
        #10;
        $display("m=%0d q=%0d y=%0d", m, q, $signed(y));

        m = -3; q = 2;
        #10;
        $display("m=%0d q=%0d y=%0d", m, q, $signed(y));

        m = -4; q = -2;
        #10;
        $display("m=%0d q=%0d y=%0d", m, q, $signed(y));

        m = 0;  q = 5;
        #10;
        $display("m=%0d q=%0d y=%0d", m, q, $signed(y));

        m = 7;  q = 7;
        #10;
        $display("m=%0d q=%0d y=%0d", m, q, $signed(y));

        m = -8; q = 1;
        #10;
        $display("m=%0d q=%0d y=%0d", m, q, $signed(y));

        $finish;
    end

endmodule

