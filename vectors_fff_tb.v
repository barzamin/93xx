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
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b0;
BR_W = 1'b0;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == H)
// assert (p18 == H)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b0;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == H)
// assert (p18 == H)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b0;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == H)
// assert (p18 == H)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == H)
// assert (p18 == H)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b1;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == H)
// assert (p18 == H)
// assert (SDRD == Z)
clk = 0; #1
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == H)
// assert (p18 == H)
// assert (SDRD == H)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == H)
// assert (p18 == L)
// assert (SDRD == L)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == L)
// assert (p18 == L)
// assert (SDRD == L)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == L)
// assert (p18 == H)
// assert (SDRD == H)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == H)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == L)
// assert (p17 == L)
// assert (p18 == H)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == H)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == L)
// assert (p17 == H)
// assert (p18 == H)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == L)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == L)
// assert (p17 == H)
// assert (p18 == L)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == L)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == L)
// assert (p17 == L)
// assert (p18 == L)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BA7 = 1'b1;
BA6 = 1'b0;
BA5 = 1'b0;
BA4 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == H)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == L)
// assert (p16 == L)
// assert (p17 == L)
// assert (p18 == L)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == H)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == L)
// assert (p16 == L)
// assert (p17 == H)
// assert (p18 == L)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == L)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == L)
// assert (p16 == L)
// assert (p17 == H)
// assert (p18 == H)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == L)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == L)
// assert (p16 == L)
// assert (p17 == L)
// assert (p18 == H)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == L)
// assert (p16 == H)
// assert (p17 == L)
// assert (p18 == H)
// assert (SDRD == L)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == L)
// assert (p16 == H)
// assert (p17 == L)
// assert (p18 == L)
// assert (SDRD == H)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == L)
// assert (p16 == H)
// assert (p17 == H)
// assert (p18 == L)
// assert (SDRD == H)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == L)
// assert (p16 == H)
// assert (p17 == H)
// assert (p18 == H)
// assert (SDRD == L)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BA7 = 1'b0;
BA6 = 1'b0;
BA5 = 1'b1;
BA4 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == L)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == H)
// assert (p18 == H)
// assert (SDRD == H)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == L)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == H)
// assert (p18 == L)
// assert (SDRD == L)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == L)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == L)
// assert (p18 == L)
// assert (SDRD == L)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == L)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == L)
// assert (p18 == H)
// assert (SDRD == H)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == H)
// assert (p13 == H)
// assert (p14 == L)
// assert (p15 == H)
// assert (p16 == L)
// assert (p17 == L)
// assert (p18 == H)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == H)
// assert (p13 == H)
// assert (p14 == L)
// assert (p15 == H)
// assert (p16 == L)
// assert (p17 == H)
// assert (p18 == H)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == L)
// assert (p13 == H)
// assert (p14 == L)
// assert (p15 == H)
// assert (p16 == L)
// assert (p17 == H)
// assert (p18 == L)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == L)
// assert (p13 == H)
// assert (p14 == L)
// assert (p15 == H)
// assert (p16 == L)
// assert (p17 == L)
// assert (p18 == L)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BA7 = 1'b1;
BA6 = 1'b0;
BA5 = 1'b1;
BA4 = 1'b0;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == H)
// assert (p13 == H)
// assert (p14 == L)
// assert (p15 == L)
// assert (p16 == L)
// assert (p17 == L)
// assert (p18 == L)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == H)
// assert (p13 == H)
// assert (p14 == L)
// assert (p15 == L)
// assert (p16 == L)
// assert (p17 == H)
// assert (p18 == L)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == L)
// assert (p13 == H)
// assert (p14 == L)
// assert (p15 == L)
// assert (p16 == L)
// assert (p17 == H)
// assert (p18 == H)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == L)
// assert (p13 == H)
// assert (p14 == L)
// assert (p15 == L)
// assert (p16 == L)
// assert (p17 == L)
// assert (p18 == H)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == L)
// assert (p15 == L)
// assert (p16 == H)
// assert (p17 == L)
// assert (p18 == H)
// assert (SDRD == L)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == L)
// assert (p15 == L)
// assert (p16 == H)
// assert (p17 == L)
// assert (p18 == L)
// assert (SDRD == H)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == L)
// assert (p15 == L)
// assert (p16 == H)
// assert (p17 == H)
// assert (p18 == L)
// assert (SDRD == H)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == L)
// assert (p15 == L)
// assert (p16 == H)
// assert (p17 == H)
// assert (p18 == H)
// assert (SDRD == L)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BA7 = 1'b0;
BA6 = 1'b1;
BA5 = 1'b0;
BA4 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == L)
// assert (p14 == L)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == H)
// assert (p18 == H)
// assert (SDRD == L)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == L)
// assert (p14 == L)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == H)
// assert (p18 == L)
// assert (SDRD == H)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == L)
// assert (p14 == L)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == L)
// assert (p18 == L)
// assert (SDRD == H)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == L)
// assert (p14 == L)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == L)
// assert (p18 == H)
// assert (SDRD == L)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == L)
// assert (p13 == L)
// assert (p14 == L)
// assert (p15 == H)
// assert (p16 == L)
// assert (p17 == L)
// assert (p18 == H)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == L)
// assert (p13 == L)
// assert (p14 == L)
// assert (p15 == H)
// assert (p16 == L)
// assert (p17 == H)
// assert (p18 == H)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == H)
// assert (p13 == L)
// assert (p14 == L)
// assert (p15 == H)
// assert (p16 == L)
// assert (p17 == H)
// assert (p18 == L)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == H)
// assert (p13 == L)
// assert (p14 == L)
// assert (p15 == H)
// assert (p16 == L)
// assert (p17 == L)
// assert (p18 == L)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BA7 = 1'b1;
BA6 = 1'b0;
BA5 = 1'b0;
BA4 = 1'b0;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == L)
// assert (p13 == L)
// assert (p14 == L)
// assert (p15 == L)
// assert (p16 == L)
// assert (p17 == L)
// assert (p18 == L)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == L)
// assert (p13 == L)
// assert (p14 == L)
// assert (p15 == L)
// assert (p16 == L)
// assert (p17 == H)
// assert (p18 == L)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == H)
// assert (p13 == L)
// assert (p14 == L)
// assert (p15 == L)
// assert (p16 == L)
// assert (p17 == H)
// assert (p18 == H)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == H)
// assert (p13 == L)
// assert (p14 == L)
// assert (p15 == L)
// assert (p16 == L)
// assert (p17 == L)
// assert (p18 == H)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == L)
// assert (p14 == L)
// assert (p15 == L)
// assert (p16 == H)
// assert (p17 == L)
// assert (p18 == H)
// assert (SDRD == H)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == L)
// assert (p14 == L)
// assert (p15 == L)
// assert (p16 == H)
// assert (p17 == L)
// assert (p18 == L)
// assert (SDRD == L)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == L)
// assert (p14 == L)
// assert (p15 == L)
// assert (p16 == H)
// assert (p17 == H)
// assert (p18 == L)
// assert (SDRD == L)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == L)
// assert (p14 == L)
// assert (p15 == L)
// assert (p16 == H)
// assert (p17 == H)
// assert (p18 == H)
// assert (SDRD == H)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BA7 = 1'b1;
BA6 = 1'b1;
BA5 = 1'b0;
BA4 = 1'b0;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == L)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == H)
// assert (p18 == H)
// assert (SDRD == L)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == L)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == H)
// assert (p18 == L)
// assert (SDRD == H)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == L)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == L)
// assert (p18 == L)
// assert (SDRD == H)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == L)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == L)
// assert (p18 == H)
// assert (SDRD == L)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == L)
// assert (p13 == L)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == L)
// assert (p17 == L)
// assert (p18 == H)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == L)
// assert (p13 == L)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == L)
// assert (p17 == H)
// assert (p18 == H)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == H)
// assert (p13 == L)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == L)
// assert (p17 == H)
// assert (p18 == L)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == H)
// assert (p13 == L)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == L)
// assert (p17 == L)
// assert (p18 == L)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BA7 = 1'b0;
BA6 = 1'b0;
BA5 = 1'b1;
BA4 = 1'b0;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == L)
// assert (p13 == L)
// assert (p14 == H)
// assert (p15 == L)
// assert (p16 == L)
// assert (p17 == L)
// assert (p18 == L)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == L)
// assert (p13 == L)
// assert (p14 == H)
// assert (p15 == L)
// assert (p16 == L)
// assert (p17 == H)
// assert (p18 == L)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == H)
// assert (p13 == L)
// assert (p14 == H)
// assert (p15 == L)
// assert (p16 == L)
// assert (p17 == H)
// assert (p18 == H)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == H)
// assert (p13 == L)
// assert (p14 == H)
// assert (p15 == L)
// assert (p16 == L)
// assert (p17 == L)
// assert (p18 == H)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == L)
// assert (p14 == H)
// assert (p15 == L)
// assert (p16 == H)
// assert (p17 == L)
// assert (p18 == H)
// assert (SDRD == H)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == L)
// assert (p14 == H)
// assert (p15 == L)
// assert (p16 == H)
// assert (p17 == L)
// assert (p18 == L)
// assert (SDRD == L)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == L)
// assert (p14 == H)
// assert (p15 == L)
// assert (p16 == H)
// assert (p17 == H)
// assert (p18 == L)
// assert (SDRD == L)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == L)
// assert (p14 == H)
// assert (p15 == L)
// assert (p16 == H)
// assert (p17 == H)
// assert (p18 == H)
// assert (SDRD == H)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == H)
// assert (p18 == H)
// assert (SDRD == H)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b0;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == H)
// assert (p18 == H)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b0;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == H)
// assert (p18 == H)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b1;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == H)
// assert (p18 == H)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b1;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == H)
// assert (p18 == H)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == H)
// assert (p18 == L)
// assert (SDRD == L)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == L)
// assert (p18 == L)
// assert (SDRD == L)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == L)
// assert (p18 == H)
// assert (SDRD == H)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == H)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == L)
// assert (p17 == L)
// assert (p18 == H)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == H)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == L)
// assert (p17 == H)
// assert (p18 == H)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == L)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == L)
// assert (p17 == H)
// assert (p18 == L)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == L)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == L)
// assert (p17 == L)
// assert (p18 == L)
// assert (SDRD == Z)
clk = 0; #1; clk = 1; #1; clk = 0; #1; // C
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BA7 = 1'b0;
BA6 = 1'b0;
BA5 = 1'b1;
BA4 = 1'b0;
BR_W = 1'b1;
oe = 1'b0;
// assert (p12 == Z)
// assert (p13 == H)
// assert (p14 == H)
// assert (p15 == H)
// assert (p16 == H)
// assert (p17 == H)
// assert (p18 == H)
// assert (SDRD == H)
clk = 0; #1
SSER = 1'b0;
BA13 = 1'b0;
BA12 = 1'b1;
BR_W = 1'b1;
oe = 1'b1;
// assert (p12 == Z)
// assert (p13 == Z)
// assert (p14 == Z)
// assert (p15 == Z)
// assert (p16 == Z)
// assert (p17 == Z)
// assert (p18 == Z)
// assert (SDRD == H)
end
endmodule
