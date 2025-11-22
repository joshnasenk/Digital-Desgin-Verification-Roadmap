`timescale 1ns/1ps

module sync_counter_tb;

parameter WIDTH = 4;

reg clk, reset, up_down;
wire [WIDTH-1:0] count;

sync_counter #(WIDTH) dut (
    .clk(clk),
    .reset(reset),
    .up_down(up_down),
    .count(count)
);

// 10ns period clock
always #5 clk = ~clk;

initial begin
    $dumpfile("sync_counter.vcd");
    $dumpvars(0, sync_counter_tb);

    clk = 0;
    reset = 1;
    up_down = 1;  // start with counting up
    #10;

    reset = 0;

    // count up
    repeat(10) #10;

    // now count down
    up_down = 0;
    repeat(10) #10;

    // assert reset again
    reset = 1; #10;
    reset = 0; #10;

    $finish;
end

initial begin
    $monitor("t=%0t | clk=%b reset=%b up_down=%b | count=%d",
              $time, clk, reset, up_down, count);
end

endmodule
