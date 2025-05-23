module top (
    input x1, x2, x3, s0, s1,
    output xfe, xff);
    mux3e dute(x1, x2, x3, s0, s1, xfe);
    mux3f dutf(x1, x2, x3, s0, s1, xff);
endmodule 

// Estrutural
module mux3e (
    input x1, x2, x3, s0, s1,
    output f);
    // Instancie e conecte os componentes abaixo  
    mux2 g1 (x1, x2, s1, g);
    mux2 f1 (g, x3, s0, f);
endmodule

// Funcional
module mux3f (
    input x1, x2, x3, s0, s1,
    output f);
    assign f = s0 ? x3 : s1 ? x2 : x1; 
endmodule

module mux2(
    input x1, x2, s,
    output f);
    assign f = s ? x2 : x1;
endmodule