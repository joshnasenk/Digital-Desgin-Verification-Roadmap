module half_adder (
    input  wire A,
    input  wire B,
    output wire SUM,
    output wire CARRY
);

assign SUM   = A ^ B;   // XOR for sum
assign CARRY = A & B;   // AND for carry

endmodule
