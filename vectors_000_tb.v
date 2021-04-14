`default_nettype none
module tb();

    initial begin
      $dumpfile("tb.vcd");
      $dumpvars(0, tb);
    end

reg clk, oe;
reg SSER, BA13, BA12, BA7, BA6, BA5, BA4, BR_W, p10;
wire p12, p13, p14, p15, p16, p17, p18, SDRD;

SOFT_ACCESS dut(
    .clk(clk),
    .oe(oe),

    .SSER(SSER),
    .BA13(BA13),
    .BA12(BA12),
    .BA7(BA7),
    .BA6(BA6),
    .BA5(BA5),
    .BA4(BA4),
    .BR_W(BR_W),
    .p12(p12),
    .p13(p13),
    .p14(p14),
    .p15(p15),
    .p16(p16),
    .p17(p17),
    .p18(p18),
    .SDRD(SDRD)
);


initial begin
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b0;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b0;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b1;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b1;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'b1;
BA7 = 1'b0;
BA6 = 1'b0;
BA5 = 1'b1;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'b0;
BA7 = 1'b0;
BA6 = 1'b1;
BA5 = 1'b1;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'b1;
BA7 = 1'b0;
BA6 = 1'b1;
BA5 = 1'b0;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'b0;
BA7 = 1'b1;
BA6 = 1'b0;
BA5 = 1'b1;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'b1;
BA7 = 1'b0;
BA6 = 1'b0;
BA5 = 1'b0;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'b1;
BA7 = 1'b1;
BA6 = 1'b0;
BA5 = 1'b0;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'b0;
BA7 = 1'b0;
BA6 = 1'b1;
BA5 = 1'b0;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b0;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b1;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b1;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'b0;
BA7 = 1'b0;
BA6 = 1'b1;
BA5 = 1'b0;
BA4 = 1'b1;
clk = 0; #1
clk = 1'b0;
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'bx;
BA7 = 1'bx;
BA6 = 1'bx;
BA5 = 1'bx;
BA4 = 1'b1;
end
endmodule
