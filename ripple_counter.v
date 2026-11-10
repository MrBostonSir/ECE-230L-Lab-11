`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2026 09:22:35 AM
// Design Name: 
// Module Name: ripple_counter
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


module ripple_counter(

    input clk, reset,
    output Q1, Q2, Q3

    );
    
    wire outQ1;
    wire outQ2;
    wire outQ3;
    
    t_flipflop rc1_inst(
        .T(1),
        .clk(clk),
        .reset(reset),
        .Q(outQ1)
        );
        
    t_flipflop rc2_inst(
        .T(outQ1),
        .clk(clk),
        .reset(reset),
        .Q(outQ2)
        );
        
    t_flipflop rc3_inst(
        .T(outQ2 & outQ1),
        .clk(clk),
        .reset(reset),
        .Q(outQ3)
        );
        
     assign Q1 = outQ1;
     assign Q2 = outQ2;
     assign Q3 = outQ3;
        
endmodule
