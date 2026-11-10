module t_flipflop(
    input T, clk, reset,
    output Q, 
    output notQ
    );
    
    
    jk_flipflop cir2(
    .J(T), 
    .K(T), 
    .clk(clk),
    .reset(reset),
    .Q(Q), 
    .notQ(notQ)
    );
                    


    
endmodule