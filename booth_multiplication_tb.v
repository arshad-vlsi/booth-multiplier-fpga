`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 13:15:44
// Design Name: 
// Module Name: booth_multiplication_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns / 1ps

module booth_multiplication_tb();

    reg        clk, rst;
    reg  [3:0] m, q;
    wire [7:0] y;

    booth_multiplication uut (
        .clk(clk),
        .rst(rst),
        .m(m),
        .q(q),
        .y(y)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $monitor("m=%3d  q=%3d  y=%4d", $signed(m), $signed(q), $signed(y));

        rst = 1; m = 0; q = 0; #10;
        rst = 0;

        m = 4'd3;  q = 4'd3;  #10;
        m = 4'd5;  q = 4'd2;  #10;
        m = 4'd7;  q = 4'd1;  #10;
        m = 4'd3;  q = 4'hD;  #10;
        m = 4'hD;  q = 4'd3;  #10;
        m = 4'hD;  q = 4'hD;  #10;
        m = 4'd0;  q = 4'd5;  #10;

        $finish;
    end

endmodule