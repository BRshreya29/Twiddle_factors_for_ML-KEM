`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2025 18:18:02
// Design Name: 
// Module Name: twofoldunit_tb
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
module twofoldunit_tb;

    // Testbench signals
    reg clock;         // Clock signal
    reg [11:0] w;      // Input to the twofoldunit module (12-bit wide)
    wire [11:0] w1, w3;  // Outputs from the twofoldunit module

    // Clock generation
    initial begin
        clock = 0; // Initialize clock to 0
        forever #5 clock = ~clock; // Toggle clock every 5ns (100MHz clock)
    end

    // Instantiate the twofoldunit module (DUT)
    twofoldunit dut (
        .clock(clock),  // Connect clock to DUT
        .w(w),          // Connect input w
        .w1(w1),        // Connect output w1
        .w3(w3)         // Connect output w3
    );

    // Test stimulus
    initial begin
        $display("Starting Testbench");
        #10
        // Apply test cases
        w = 12'd1338;  #10// 12-bit decimal value of 749 
        $display("w=%b, w1=%b, w3=%b", w, w1, w3);

        w = 12'd963;  #10// 12-bit decimal value of 749 
        $display("w=%b, w1=%b, w3=%b", w, w1, w3);
        
        w = 12'd1690;  #10// 12-bit decimal value of 749 
        $display("w=%b, w1=%b, w3=%b", w, w1, w3);
        
        w = 12'd1315;  #10// 12-bit decimal value of 749 
        $display("w=%b, w1=%b, w3=%b", w, w1, w3);

        // End of simulation
        $display("Testbench completed");
        $finish;
    end
endmodule
