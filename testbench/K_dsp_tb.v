`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2025 18:08:11
// Design Name: 
// Module Name: K_dsp_tb
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

module K_dsp_tb;

    // Testbench signals
    reg clk;
    reg [11:0] a, b;
    wire [11:0] c_mod_q;

    // Clock generation
    always #5 clk = ~clk; // Clock with 10ns period

    // Instantiate the module under test
    KDSP uut (
        .clk(clk),
        .a(a),
        .b(b),
        .c_mod_q(c_mod_q)
    );

    // Testbench procedure
    initial begin
        // Initialize signals
        clk = 0;
        a = 0; b = 0;

        // Monitor signals
        $monitor("Time=%0d a=%d b=%d c_mod_q=%d", $time, a, b, c_mod_q);

        // Test cases
        #10; a = 12'd10;   b = 12'd5;    #10; // Expected c_mod_q: (10 * 5) % 4096 = 50
        #10; a = 12'd4095; b = 12'd2;    #10; // Expected c_mod_q: (4095 * 2) % 4096 = 4094
        #10; a = 12'd1234; b = 12'd5678; #10; // Expected c_mod_q: (1234 * 5678) % 4096 = 1004
        #10; a = 12'd2048; b = 12'd2048; #10; // Expected c_mod_q: (2048 * 2048) % 4096 = 0
        #10; a = 12'd3000; b = 12'd3000; #10; // Expected c_mod_q: (3000 * 3000) % 4096 = 1568

        // Finish simulation
        #20;
        $finish;
    end

endmodule