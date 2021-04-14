/*
mode: Registered (syn=0, ac0=1)
sig: "CLE36a_A"
*/
module GAL16V8 (
);

  /* OLMC 0 */
  assign SDRD = ((~SSER & ~BA13 & BA12 & ~q3 & BR_W)) ? ((~q2 & ~q3 & ~q4 & ~q5 & q6) | (~q1 & ~q4 & q6) | (q1 & q4 & q6) | (q1 & ~q4 & ~q6) | (~q1 & q4 & ~q6)) : 1'bz;

  /* OLMC 1 */
  reg q1;
  always @(posedge clk)
    q1 <= ((~SSER & ~BA13 & q1 & BA12 & ~BA7 & q3 & ~BA6 & ~q4 & BA5 & ~q5 & ~BA4 & q6 & BR_W) | (~SSER & ~BA13 & q1 & BA12 & BA7 & q3 & ~BA6 & ~q4 & ~BA5 & q5 & ~BA4 & q6 & BR_W) | (~SSER & ~BA13 & q1 & BA12 & q2 & q4 & BR_W) | (~SSER & ~BA13 & q1 & BA12 & BA7 & q3 & ~BA6 & ~q4 & BA5 & q5 & ~BA4 & ~q6 & BR_W) | (~SSER & ~BA13 & BA12 & q2 & ~q3 & q4 & BR_W) | (~SSER & ~BA13 & q1 & BA12 & BA7 & q3 & ~BA6 & ~q4 & ~BA5 & ~q5 & BA4 & ~q6 & BR_W) | (~SSER & ~BA13 & BA12 & ~q2 & ~q4 & BR_W));
  assign p18 = oe ? q1 : 1'bz;

  /* OLMC 2 */
  reg q2;
  always @(posedge clk)
    q2 <= ((~SSER & ~BA13 & q1 & BA12 & ~BA7 & ~BA6 & ~q4 & BA5 & ~q5 & ~BA4 & q6 & BR_W) | (~SSER & ~BA13 & q1 & BA12 & ~q2 & ~q4 & BR_W) | (~SSER & ~BA13 & q1 & BA12 & BA7 & ~BA6 & ~q4 & ~BA5 & q5 & ~BA4 & q6 & BR_W) | (~SSER & ~BA13 & ~q1 & BA12 & q2 & ~q3 & BR_W) | (~SSER & ~BA13 & q1 & BA12 & BA7 & ~BA6 & ~q4 & BA5 & q5 & ~BA4 & ~q6 & BR_W) | (~SSER & ~BA13 & ~q1 & BA12 & q3 & q4 & BR_W) | (~SSER & ~BA13 & q1 & BA12 & BA7 & ~BA6 & ~q4 & ~BA5 & ~q5 & BA4 & ~q6 & BR_W) | (~SSER & ~BA13 & q1 & BA12 & ~q3 & ~q4 & BR_W));
  assign p17 = oe ? q2 : 1'bz;

  /* OLMC 3 */
  reg q3;
  always @(posedge clk)
    q3 <= ((~SSER & ~BA13 & BA12 & ~BA7 & q3 & ~BA6 & ~q4 & BA5 & ~q5 & ~BA4 & q6 & BR_W) | (~SSER & ~BA13 & BA12 & BA7 & q3 & ~BA6 & ~q4 & ~BA5 & q5 & ~BA4 & q6 & BR_W) | (~SSER & ~BA13 & BA12 & BA7 & q3 & ~BA6 & ~q4 & BA5 & q5 & ~BA4 & ~q6 & BR_W) | (~SSER & ~BA13 & q1 & BA12 & q3 & q4 & BR_W) | (~SSER & ~BA13 & BA12 & BA7 & q3 & ~BA6 & ~q4 & ~BA5 & ~q5 & BA4 & ~q6 & BR_W) | (~SSER & ~BA13 & BA12 & ~q2 & q3 & BR_W) | (~SSER & ~BA13 & ~q1 & BA12 & q2 & ~q4 & BR_W));
  assign p16 = oe ? q3 : 1'bz;

  /* OLMC 4 */
  reg q4;
  always @(posedge clk)
    q4 <= ((~SSER & ~BA13 & BA12 & q2 & q4 & BR_W) | (~SSER & ~BA13 & q1 & BA12 & q2 & ~BA7 & q3 & ~BA6 & BA5 & ~q5 & ~BA4 & q6 & BR_W) | (~SSER & ~BA13 & q1 & BA12 & q2 & BA7 & q3 & ~BA6 & ~BA5 & q5 & ~BA4 & q6 & BR_W) | (~SSER & ~BA13 & q1 & BA12 & q4 & BR_W) | (~SSER & ~BA13 & q1 & BA12 & q2 & BA7 & q3 & ~BA6 & BA5 & q5 & ~BA4 & ~q6 & BR_W) | (~SSER & ~BA13 & BA12 & q3 & q4 & BR_W) | (~SSER & ~BA13 & q1 & BA12 & q2 & BA7 & q3 & ~BA6 & ~BA5 & ~q5 & BA4 & ~q6 & BR_W));
  assign p15 = oe ? q4 : 1'bz;

  /* OLMC 5 */
  reg q5;
  always @(posedge clk)
    q5 <= ((~SSER & ~BA13 & BA12 & BA7 & ~BA6 & ~q4 & ~BA5 & q5 & ~BA4 & q6 & BR_W) | (~SSER & ~BA13 & BA12 & ~BA7 & BA6 & q4 & ~BA5 & q5 & BA4 & ~q6 & BR_W) | (~SSER & ~BA13 & q1 & BA12 & q4 & q5 & BR_W) | (~SSER & ~BA13 & ~q1 & BA12 & q2 & q5 & BR_W) | (~SSER & ~BA13 & BA12 & ~q2 & q3 & q5 & BR_W) | (~SSER & ~BA13 & BA12 & BA7 & ~BA6 & ~q4 & BA5 & q5 & ~BA4 & ~q6 & BR_W) | (~SSER & ~BA13 & BA12 & ~q3 & ~q4 & q5 & BR_W) | (~SSER & ~BA13 & ~q1 & BA12 & ~q2 & ~BA7 & ~q3 & ~BA6 & q4 & BA5 & ~q5 & BA4 & ~q6 & BR_W));
  assign p14 = oe ? q5 : 1'bz;

  /* OLMC 6 */
  reg q6;
  always @(posedge clk)
    q6 <= ((~SSER & ~BA13 & BA12 & ~BA7 & ~BA6 & ~q4 & BA5 & ~q5 & ~BA4 & q6 & BR_W) | (~SSER & ~BA13 & BA12 & BA7 & BA6 & q4 & ~BA5 & q5 & ~BA4 & q6 & BR_W) | (~SSER & ~BA13 & q1 & BA12 & q4 & q6 & BR_W) | (~SSER & ~BA13 & ~q1 & BA12 & q2 & q6 & BR_W) | (~SSER & ~BA13 & BA12 & ~q2 & q3 & q6 & BR_W) | (~SSER & ~BA13 & BA12 & BA7 & ~BA6 & ~q4 & ~BA5 & q5 & ~BA4 & q6 & BR_W) | (~SSER & ~BA13 & BA12 & ~q3 & ~q4 & q6 & BR_W) | (~SSER & ~BA13 & ~q1 & BA12 & ~q2 & ~BA7 & ~q3 & BA6 & q4 & ~BA5 & q5 & BA4 & ~q6 & BR_W));
  assign p13 = oe ? q6 : 1'bz;

  /* OLMC 7 */
  assign p12 = ((~SSER & ~BA13 & BA12 & q3 & BR_W)) ? ((q1 & q2 & q3 & q5) | (q1 & ~q2 & q3 & q4 & ~q5) | (~q1 & q2 & q3 & ~q5) | (~q1 & ~q4 & q6) | (q1 & q4 & q6) | (q1 & ~q4 & ~q6) | (~q1 & q4 & ~q6)) : 1'bz;

endmodule

