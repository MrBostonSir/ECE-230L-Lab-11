`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2026 09:23:01 AM
// Design Name: 
// Module Name: modulo_divider
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


module modulo_divider(
    input enable, reset,
    output bit0, bit1, bit2, final
    );
    
    wire A0;
    wire A1;
    wire A2;
    wire Y0;
    wire Y1;
    wire Y2;
    wire Cout1;
    wire Cout2;
    reg finalOut;
    
    initial begin
        finalOut <= 0;
    end
    
    
    full_adder md1(
        .A(A0),
        .B(enable),
        .Cin(0),
        .Y(Y0),
        .Cout(Cout1)
        );
        
    d_flipflop md4(
        .data(Y0),
        .clk(enable),
        .reset(reset),
        .Q(A0)
        );
        
    full_adder md2(
        .A(A1),
        .B(0),
        .Cin(Cout1),
        .Y(Y1),
        .Cout(Cout2)
        );
        
     d_flipflop md5(
        .data(Y1),
        .clk(enable),
        .reset(reset),
        .Q(A1)
        );
     
     full_adder md3(
        .A(A2),
        .B(0),
        .Cin(Cout2),
        .Y(Y2),
        .Cout(Cout3)
        );
        
     d_flipflop md6(
        .data(Y2),
        .clk(enable),
        .reset(reset),
        .Q(A2)
        );
        
     d_flipflop mdOutput(
        .data(finalOut),
        .clk(enable),
        .reset(reset),
        .Q(final)
        );
    
    
    assign bit0 = A0;
    assign bit1 = A1;
    assign bit2 = A2;
    
    always @(posedge enable or posedge reset) begin
        if(A0 & (A1 == 0) & A2 & (finalOut == 0))
            finalOut <= 1;
        if(A0 & (A1 == 0) & A2 & finalOut)
            finalOut <= 0;
        if(reset)
            finalOut <= 0;
    end
    
endmodule
