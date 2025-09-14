`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2025 18:06:19
// Design Name: 
// Module Name: twofoldunit
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
module twofoldunit(
    input clock,
    input [11:0] w,
    output [11:0] w1,
    output [11:0] w3
    );
    reg [11:0] phi64=12'd1729;
    wire [11:0] phi2;

  /* butterfly_best_KRED dsp1(
        .clk(clock),
        .a(w),
        .b(phi64),
        .c_mod_q(phi2)
    ); */ 
    
    KDSP dsp2(
        .clk(clock),
        .a(w),
        .b(phi64),
        .c_mod_q(phi2)
    );
    
    /*MyDSP dsp (
        .clk(clock),
        .a(w),
        .b(phi64),
        .c_mod_q(phi2)
    );*/

    assign w1 = w;
    assign w3 = phi2;
endmodule