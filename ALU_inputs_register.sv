`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2023 23:21:42
// Design Name: 
// Module Name: ALU_inputs_register
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


module ALU_inputs_register #(parameter M = 16)(
    input logic clk,reset,
    input logic [M-1:0] data_in,
    input logic [1:0] load_A, load_B, load_Op,updateRes,
    output logic [6:0] Segments,
    output logic [7:0] anodes,
    output logic [3:0] LEDs
    );
    
    logic [M-1:0] in_nbits1,in_nbits2,in_2bits,selector;
    logic [M-1:0] Result;
    logic [3:0] Flags;
    
    
    Register inst_register(
    .D(data_in),
    .clk(clk),              
    .reset(reset),
    .load(load_A),
    .Q(in_nbits1)
    );
    
    Register inst_register2(
    .D(data_in),
    .clk(clk),              
    .reset(reset),
    .load(load_B),
    .Q(in_nbits2)
    );
    
    Register inst_register3(
    .D(data_in[1:0]),
    .clk(clk),              
    .reset(reset),
    .load(load_Op),
    .Q(in_2bits)
    );
    
    S4_actividad3 #(
    .M(16)) inst_ALU(
    .A(in_nbits1),
    .B(in_nbits2),
    .OpCode(in_2bits),
    .Result(Result),
    .Flags(Flags)
    );
    
    
    Register inst_register4(
    .D(Result),
    .clk(clk),              
    .reset(reset),
    .load(updateRes),
    .Q(selector)
    );
    
    Register inst_register5(
    .D(Flags),
    .clk(clk),              
    .reset(reset),
    .load(updateRes),
    .Q(LEDs)
    );
    
    S4_actividad1 inst_hex_to_7seg(
    .HEX_in(selector),
    .clock(clk),
    .reset(reset),
    .segments(Segments),
    .anodes(anodes)                 
    );
       
endmodule
