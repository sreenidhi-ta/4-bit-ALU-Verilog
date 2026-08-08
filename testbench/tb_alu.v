`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2026 14:19:01
// Design Name: 
// Module Name: tb_alu
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


module tb_alu;

reg [3:0] a, b;
reg [2:0] sel;

wire [3:0] result;
wire carry;
wire zero;

alu uut (
    .a(a),
    .b(b),
    .sel(sel),
    .result(result),
    .carry(carry),
    .zero(zero)
);

initial begin

    $monitor("Time=%0t | A=%b B=%b Sel=%b | Result=%b Carry=%b Zero=%b",
             $time, a, b, sel, result, carry, zero);

    // Addition
    a = 4'b1010;
    b = 4'b0111;
    sel = 3'b000;
    #10;

    // Subtraction
    sel = 3'b001;
    #10;

    // AND
    sel = 3'b010;
    #10;

    // OR
    sel = 3'b011;
    #10;

    // XOR
    sel = 3'b100;
    #10;

    // NOT A
    sel = 3'b101;
    #10;

    // Left Shift
    sel = 3'b110;
    #10;

    // Right Shift
    sel = 3'b111;
    #10;

    #20 $finish;

end

endmodule
