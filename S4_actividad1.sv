`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2023 14:14:36
// Design Name: 
// Module Name: S4_actividad1
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


module S4_actividad1(
    input  logic clock,
    input  logic reset,						
    input  logic [15:0] HEX_in,
    output logic [6:0]  segments,				/*Para prender los segmentos*/
    output logic [3:0]  anodes					/*Display a encender*/
    
    );	
    
    logic [2:0]selector;						/*Para seleccionar el mux*/
    logic [3:0]selector_display;				/*Sale del modulo selector y elige los segmentos*/
    
     
    contador_nbits #(.N(2)) inst_contador(		/*Cuenta nbits, da el orden a los segmentos y va hacia el deco*/
    .clk(clock),
    .reset(reset),
    .count(selector)
	
    );
    
    bcd_selector inst_selector_bcd(				/*Seleccionará*/
    .HEX_in(HEX_in),
    .count(selector),
    .bcd_out(selector_display)
	
    );
    
    BCD_display_7 inst_display(					/*Mostrará los segmentos encendidos*/
    .BCD_in(selector_display),
    .sevenSeg(segments)
	
    );
    
    deco_8bits inst_deco(						/*Seleccionará cual display estará ON*/
    .entrada_deco(selector),
    .anodes(anodes)
	
    ); 
    
    
endmodule
