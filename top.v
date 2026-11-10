`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2026 09:17:22 AM
// Design Name: 
// Module Name: top
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


module top(
    input btnC, btnU,
    input [6:0]sw,
    output [6:0]led
    );
    
    ripple_counter d_inst(
        .reset(btnU),
        .clk(btnC),
        .Q1(led[0]),
        .Q2(led[1]),
        .Q3(led[2])
        );
        
        
    modulo_divider f_inst(
        .reset(btnU),
        .enable(btnC),
        .bit0(led[3]),
        .bit1(led[4]),
        .bit2(led[5]),
        .final(led[6])
        );
    
endmodule
