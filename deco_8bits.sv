`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2023 14:21:44
// Design Name: 
// Module Name: deco_8bits
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


module deco_8bits(
    input logic [1:0] entrada_deco,
    output logic [3:0] anodes

    );
    
    always_comb begin
    case(entrada_deco)
        2'b00:anodes = 4'b1110;
        2'b01:anodes = 4'b1101;
        2'b10:anodes = 4'b1011;
        2'b11:anodes = 4'b0111;
        default: anodes = 4'b1111; 
     endcase
    
    
    end
    
endmodule
