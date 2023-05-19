`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2023 14:19:21
// Design Name: 
// Module Name: bcd_selector
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


module bcd_selector(  
    input logic [15:0] HEX_in,
    input logic [1:0] count,
    output logic [3:0] bcd_out
    );
    
    always_comb begin
	
    case(count)
        2'b00:bcd_out = HEX_in[3:0];
        2'b01:bcd_out = HEX_in[7:4];
        2'b10:bcd_out = HEX_in[11:8];
        2'b11:bcd_out = HEX_in[15:12];
        default: bcd_out = 'd0;
    endcase 
	
    end
endmodule
