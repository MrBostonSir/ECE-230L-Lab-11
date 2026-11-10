module jk_flipflop(
    input J, K, clk, reset,
    output Q, notQ
    );
    
   
    d_flipflop a_inst(
        .data((J & notQ)|(~K & Q)),
        .clk(clk),
        .reset(reset),
        .Q(Q),
        .notQ(notQ)
    );
    
    

    
endmodule