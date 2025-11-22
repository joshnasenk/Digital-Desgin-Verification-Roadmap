`timescale 1ns/1ps

module dff_tb;

reg clk, reset, D;
wire Q;

// DUT instance
dff dut (
    .clk(clk),
    .reset(reset),
    .D(D),
    .Q(Q)
);

// clock gen — 10ns period
always #5 clk = ~clk;

initial begin
    $dumpfile("dff.vcd");
    $dumpvars(0, dff_tb);

    clk = 0;
    reset = 1;
    D = 0;
    #10;

    reset = 0;   // release reset
    D = 1;       #10;
    D = 0;       #10;
    D = 1;       #10;

    reset = 1;   #10; // assert reset again
    reset = 0;   #10;

    $finish;
end

initial begin
    $monitor("t=%0t | clk=%b reset=%b D=%b -> Q=%b",
             $time, clk, reset, D, Q);
end

endmodule
