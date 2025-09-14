`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2025 19:54:36
// Design Name: 
// Module Name: FA_logic
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

module FA_logic(
input a,
input b,
input c,
output c_0,
output c_1
);

assign c_0 = a ^ b ^ c;
assign c_1 = a | b | c;

endmodule
