`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2026 10:31:43 AM
// Design Name: 
// Module Name: full_adder
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


module full_adder(

    input A, B, Cin,
    output Y, Cout
    
    );
    
    assign Y = (~A&~B&Cin) | (~A&B&~Cin) | (A&B&Cin) | (A&~B&~Cin);
    assign Cout = (A&B) | (B&Cin) | (A&Cin);
    
    endmodule