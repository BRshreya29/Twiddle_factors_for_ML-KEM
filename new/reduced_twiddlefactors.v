`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2025 23:50:07
// Design Name: 
// Module Name: reduced_twiddlefactors
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
module store_phi_values (
    input  [6:0] p,       // 7-bit input for p (0 to 127)
    output reg [11:0] phi // 12-bit output for phi values
);
    always @(*) begin
        case (p)
            7'd0   : phi = 12'd1;
            7'd1   : phi = 12'd2688;
            7'd2   : phi = 12'd1414;
            7'd3   : phi = 12'd2443;
            7'd4   : phi = 12'd1996;
            7'd5   : phi = 12'd2229;
            7'd6   : phi = 12'd2681;
            7'd7   : phi = 12'd2572;
            7'd8   : phi = 12'd2532;
            7'd9   : phi = 12'd1540;
            7'd10  : phi = 12'd1573;
            7'd11  : phi = 12'd394;
            7'd12  : phi = 12'd450;
            7'd13  : phi = 12'd1173;
            7'd14  : phi = 12'd461;
            7'd15  : phi = 12'd780;
            7'd16  : phi = 12'd2699;
            7'd17  : phi = 12'd1021;
            7'd18  : phi = 12'd1352;
            7'd19  : phi = 12'd2237;
            7'd20  : phi = 12'd882;
            7'd21  : phi = 12'd568;
            7'd22  : phi = 12'd2102;
            7'd23  : phi = 12'd863;
            7'd24  : phi = 12'd2760;
            7'd25  : phi = 12'd1868;
            7'd26  : phi = 12'd1052;
            7'd27  : phi = 12'd1455;
            7'd28  : phi = 12'd2794;
            7'd29  : phi = 12'd48;
            7'd30  : phi = 12'd2522;
            7'd31  : phi = 12'd1292;
            7'd32  : phi = 12'd749;
            7'd33  : phi = 12'd2596;
            7'd34  : phi = 12'd464;
            7'd35  : phi = 12'd2186;
            7'd36  : phi = 12'd283;
            7'd37  : phi = 12'd1692;
            7'd38  : phi = 12'd682;
            7'd39  : phi = 12'd2266;
            7'd40  : phi = 12'd2267;
            // Removed: 7'd41 (no assignment)
            // Removed: 7'd42 (no assignment)
            // Removed: 7'd43 (no assignment)
            7'd44  : phi = 12'd821;
            7'd45  : phi = 12'd3050;
            7'd46  : phi = 12'd2402;
            7'd47  : phi = 12'd1645;
            7'd48  : phi = 12'd848;
            // Removed: 7'd49 (no assignment)
            7'd50  : phi = 12'd632;
            // Removed: 7'd51 (no assignment)
            7'd52  : phi = 12'd1476;
            // Removed: 7'd53 (no assignment)
            7'd54  : phi = 12'd3110;
            7'd55  : phi = 12'd561;
            7'd56  : phi = 12'd3260;
            7'd57  : phi = 12'd952;
            7'd58  : phi = 12'd2304;
            7'd59  : phi = 12'd1212;
            7'd60  : phi = 12'd2094;
            7'd61  : phi = 12'd2662;
            7'd62  : phi = 12'd1435;
            7'd63  : phi = 12'd2298;
            // Removed: 7'd64 to 7'd127 (those specified to be removed)
            default: phi = 12'd0; // Default case to handle undefined inputs
        endcase
    end
endmodule

