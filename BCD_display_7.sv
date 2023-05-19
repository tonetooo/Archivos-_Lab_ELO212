`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2023 14:20:05
// Design Name: 
// Module Name: BCD_display_7
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


module BCD_display_7(
    input logic [3:0] BCD_in,
    output logic [6:0] sevenSeg 
    );  
        
    always_comb begin
        case(BCD_in)
            4'b0000: sevenSeg = 7'b0000001;	//0
            4'b0001: sevenSeg = 7'b1001111;	//1
            4'b0010: sevenSeg = 7'b0010010;	//2
            4'b0011: sevenSeg = 7'b0000110;	//3
            4'b0100: sevenSeg = 7'b1001100;	//4
            4'b0101: sevenSeg = 7'b0100100;	//5	
            4'b0110: sevenSeg = 7'b0100000;	//6
            4'b0111: sevenSeg = 7'b0001111;	//7
            4'b1000: sevenSeg = 7'b0000000;	//8
            4'b1001: sevenSeg = 7'b0001100; //9
            4'b1010: sevenSeg = 7'b0001000; //A
            4'b1011: sevenSeg = 7'b1100000;	//b
            4'b1100: sevenSeg = 7'b0110001; //C
            4'b1101: sevenSeg = 7'b1000010; //d
            4'b1110: sevenSeg = 7'b0110000;	//E
            4'b1111: sevenSeg = 7'b0111000;	//F
            default: sevenSeg = 7'b1111111; //default
        endcase
   end
endmodule
