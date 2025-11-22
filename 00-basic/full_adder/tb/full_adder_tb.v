`timescale 1ns/1ps

module full_adder_tb;

reg  A, B, CIN;
wire SUM, COUT;

full_adder dut (
    .A   (A),
    .B   (B),
    .CIN (CIN),
    .SUM (SUM),
    .COUT(COUT)
);

initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars(0, full_adder_tb);

    // All 8 input combinations
    A=0; B=0; CIN=0; #10;
    A=0; B=0; CIN=1; #10;
    A=0; B=1; CIN=0; #10;
    A=0; B=1; CIN=1; #10;
    A=1; B=0; CIN=0; #10;
    A=1; B=0; CIN=1; #10;
    A=1; B=1; CIN=0; #10;
    A=1; B=1; CIN=1; #10;

    $finish;
end

initial begin
    $monitor("t=%0t | A=%b B=%b CIN=%b | SUM=%b COUT=%b",
              $time, A, B, CIN, SUM, COUT);
end

endmodule
