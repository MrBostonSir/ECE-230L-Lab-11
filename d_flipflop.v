`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2026 09:15:38 AM
// Design Name: 
// Module Name: d_flipflop
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


module d_flipflop(
    input clk, 
    input data,
    input reset,
    output reg Q, notQ
    );
    
    initial begin
        Q <= 0;
        notQ <= 1;
    end
    
    always @(posedge clk or posedge reset) begin
        if(reset) begin
            Q <= 0;
            notQ <= 1;
          end
        else begin
            Q <= data;
            notQ <= ~data;
        end
        
    end
    
endmodule