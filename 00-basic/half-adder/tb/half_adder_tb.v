`timescale 1ns/1ps

module half_adder_tb;

reg  A, B;
wire SUM, CARRY;

half_adder dut (
    .A(A),
    .B(B),
    .SUM(SUM),
    .CARRY(CARRY)
);

initial begin
    $dumpfile("half_adder.vcd");
    $dumpvars(0, half_adder_tb);

    // Test combinations
    A=0; B=0; #10;
    A=0; B=1; #10;
    A=1; B=0; #10;
    A=1; B=1; #10;

    $finish;
end

initial begin
    $monitor("Time=%0t | A=%b B=%b | SUM=%b CARRY=%b",
             $time, A, B, SUM, CARRY);
end

endmodule
