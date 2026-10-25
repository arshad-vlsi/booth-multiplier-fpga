`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 00:14:16
// Design Name: 
// Module Name: booth_multiplication
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



module booth_multiplication(
    input  wire        clk,
    input  wire        rst,
    input  signed [3:0] m,
    input  signed [3:0] q,
    output reg  [7:0]  y
);

    reg q1;
    reg signed [3:0] m1;
    integer i;
    reg [7:0] y_comb;

    // ── Your original Booth logic — 100% UNCHANGED ──
    always @(*) begin
        y_comb = {4'b0, q};
        q1     = 0;
        m1     = -m;

        for (i = 0; i < 4; i = i + 1) begin
            case ({y_comb[0], q1})
                2'b01 : y_comb[7:4] = y_comb[7:4] + m;
                2'b10 : y_comb[7:4] = y_comb[7:4] + m1;
            endcase
            q1     = y_comb[0];
            y_comb = {y_comb[7], y_comb[7:1]};
        end
    end

    // ── Output register (added for FPGA flow) ──
    always @(posedge clk or posedge rst) begin
        if (rst) y <= 8'b0;
        else     y <= y_comb;
    end

endmodule
