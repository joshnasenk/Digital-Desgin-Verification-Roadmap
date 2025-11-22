module sync_counter #(
    parameter WIDTH = 4       // bit width, default 4-bit counter
)(
    input  wire              clk,
    input  wire              reset,   // synchronous, active high
    input  wire              up_down, // 1 = count up, 0 = count down
    output reg [WIDTH-1:0]   count
);

always @(posedge clk) begin
    if (reset)
        count <= 0;
    else begin
        if (up_down)
            count <= count + 1'b1;
        else
            count <= count - 1'b1;
    end
end

endmodule
