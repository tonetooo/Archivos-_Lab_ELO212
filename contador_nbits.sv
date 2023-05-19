`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2023 14:18:02
// Design Name: 
// Module Name: contador_nbits
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


module contador_nbits #(parameter N = 8)(
    input logic clk,reset, 
    output logic [N-1:0] count
    );
    
    always_ff @(posedge clk) begin
        if (reset)
            count <= 8'b0;
        else 
            count <= count + 1;
    end  
    
endmodule
