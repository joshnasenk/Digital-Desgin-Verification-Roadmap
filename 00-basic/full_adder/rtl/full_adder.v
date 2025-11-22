module full_adder (
    input  wire A,      // input bit 1
    input  wire B,      // input bit 2
    input  wire CIN,    // carry in
    output wire SUM,    // sum output
    output wire COUT    // carry out
);

assign SUM  = A ^ B ^ CIN;                     // XOR chain
assign COUT = (A & B) | (A & CIN) | (B & CIN); // majority logic

endmodule
