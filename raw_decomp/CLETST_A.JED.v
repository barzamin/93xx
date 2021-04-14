/*
mode: Complex (syn=1, ac0=1)
sig: "cletst_a"
*/
module GAL16V8 (
);

  /* OLMC 0 */
  assign SDRD = ((~SSER & ~BA13 & BA12 & BA7 & BR_W)) ? ((~BA6 & BA4) | (BA6 & ~BA4)) : 1'bz;

  /* OLMC 1 */
  assign p18 = ((SSER & ~SSER & p1 & ~p1 & BA13 & ~BA13 & p18 & ~p18 & BA12 & ~BA12 & p17 & ~p17 & BA7 & ~BA7 & p16 & ~p16 & BA6 & ~BA6 & p15 & ~p15 & BA5 & ~BA5 & p14 & ~p14 & BA4 & ~BA4 & p13 & ~p13 & BR_W & ~BR_W & p11 & ~p11)) ? 1'b0 : 1'bz;

  /* OLMC 2 */
  assign p17 = ((SSER & ~SSER & p1 & ~p1 & BA13 & ~BA13 & p18 & ~p18 & BA12 & ~BA12 & p17 & ~p17 & BA7 & ~BA7 & p16 & ~p16 & BA6 & ~BA6 & p15 & ~p15 & BA5 & ~BA5 & p14 & ~p14 & BA4 & ~BA4 & p13 & ~p13 & BR_W & ~BR_W & p11 & ~p11)) ? 1'b0 : 1'bz;

  /* OLMC 3 */
  assign p16 = ((SSER & ~SSER & p1 & ~p1 & BA13 & ~BA13 & p18 & ~p18 & BA12 & ~BA12 & p17 & ~p17 & BA7 & ~BA7 & p16 & ~p16 & BA6 & ~BA6 & p15 & ~p15 & BA5 & ~BA5 & p14 & ~p14 & BA4 & ~BA4 & p13 & ~p13 & BR_W & ~BR_W & p11 & ~p11)) ? 1'b0 : 1'bz;

  /* OLMC 4 */
  assign p15 = ((SSER & ~SSER & p1 & ~p1 & BA13 & ~BA13 & p18 & ~p18 & BA12 & ~BA12 & p17 & ~p17 & BA7 & ~BA7 & p16 & ~p16 & BA6 & ~BA6 & p15 & ~p15 & BA5 & ~BA5 & p14 & ~p14 & BA4 & ~BA4 & p13 & ~p13 & BR_W & ~BR_W & p11 & ~p11)) ? 1'b0 : 1'bz;

  /* OLMC 5 */
  assign p14 = ((SSER & ~SSER & p1 & ~p1 & BA13 & ~BA13 & p18 & ~p18 & BA12 & ~BA12 & p17 & ~p17 & BA7 & ~BA7 & p16 & ~p16 & BA6 & ~BA6 & p15 & ~p15 & BA5 & ~BA5 & p14 & ~p14 & BA4 & ~BA4 & p13 & ~p13 & BR_W & ~BR_W & p11 & ~p11)) ? 1'b0 : 1'bz;

  /* OLMC 6 */
  assign p13 = ((SSER & ~SSER & p1 & ~p1 & BA13 & ~BA13 & p18 & ~p18 & BA12 & ~BA12 & p17 & ~p17 & BA7 & ~BA7 & p16 & ~p16 & BA6 & ~BA6 & p15 & ~p15 & BA5 & ~BA5 & p14 & ~p14 & BA4 & ~BA4 & p13 & ~p13 & BR_W & ~BR_W & p11 & ~p11)) ? 1'b0 : 1'bz;

  /* OLMC 7 */
  assign p12 = ((~SSER & ~BA13 & BA12 & ~BA7 & BR_W)) ? ((~BA5 & BA4) | (BA5 & ~BA4)) : 1'bz;

endmodule

