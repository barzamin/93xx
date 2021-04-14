module SOFT_ACCESS (
  input wire clk,
  input wire oe,

  input wire SSER,
  input wire BA13,
  input wire BA12,
  input wire BA7,
  input wire BA6,
  input wire BA5,
  input wire BA4,
  input wire BR_W,

  output wire p12,
  output wire p13,
  output wire p14,
  output wire p15,
  output wire p16,
  output wire p17,
  output wire p18,

  output reg SDRD
);

  /* OLMC 1 */
  reg q1;
  always @(posedge clk)
    q1 <= ((~SSER & ~BA13 & q1 & BA12 & ~BA7 & q3 & ~BA6 & ~q4 & BA5 & ~q5 & ~BA4 & q6 & BR_W)
         | (~SSER & ~BA13 & q1 & BA12 & BA7 & q3 & ~BA6 & ~q4 & ~BA5 & q5 & ~BA4 & q6 & BR_W)
         | (~SSER & ~BA13 & q1 & BA12 & q2 & q4 & BR_W)
         | (~SSER & ~BA13 & q1 & BA12 & BA7 & q3 & ~BA6 & ~q4 & BA5 & q5 & ~BA4 & ~q6 & BR_W)
         | (~SSER & ~BA13 & BA12 & q2 & ~q3 & q4 & BR_W)
         | (~SSER & ~BA13 & q1 & BA12 & BA7 & q3 & ~BA6 & ~q4 & ~BA5 & ~q5 & BA4 & ~q6 & BR_W)
         | (~SSER & ~BA13 & BA12 & ~q2 & ~q4 & BR_W));
  assign p18 = ~oe ? ~q1 : 1'bz;

  /* OLMC 2 */
  reg q2;
  always @(posedge clk)
    q2 <= ((~SSER & ~BA13 & q1 & BA12 & ~BA7 & ~BA6 & ~q4 & BA5 & ~q5 & ~BA4 & q6 & BR_W)
         | (~SSER & ~BA13 & q1 & BA12 & ~q2 & ~q4 & BR_W)
         | (~SSER & ~BA13 & q1 & BA12 & BA7 & ~BA6 & ~q4 & ~BA5 & q5 & ~BA4 & q6 & BR_W)
         | (~SSER & ~BA13 & ~q1 & BA12 & q2 & ~q3 & BR_W)
         | (~SSER & ~BA13 & q1 & BA12 & BA7 & ~BA6 & ~q4 & BA5 & q5 & ~BA4 & ~q6 & BR_W)
         | (~SSER & ~BA13 & ~q1 & BA12 & q3 & q4 & BR_W)
         | (~SSER & ~BA13 & q1 & BA12 & BA7 & ~BA6 & ~q4 & ~BA5 & ~q5 & BA4 & ~q6 & BR_W)
         | (~SSER & ~BA13 & q1 & BA12 & ~q3 & ~q4 & BR_W));
  assign p17 = ~oe ? ~q2 : 1'bz;

  /* OLMC 3 */
  reg q3;
  always @(posedge clk)
    q3 <= ((~SSER & ~BA13 & BA12 & ~BA7 & q3 & ~BA6 & ~q4 & BA5 & ~q5 & ~BA4 & q6 & BR_W)
         | (~SSER & ~BA13 & BA12 & BA7 & q3 & ~BA6 & ~q4 & ~BA5 & q5 & ~BA4 & q6 & BR_W)
         | (~SSER & ~BA13 & BA12 & BA7 & q3 & ~BA6 & ~q4 & BA5 & q5 & ~BA4 & ~q6 & BR_W)
         | (~SSER & ~BA13 & q1 & BA12 & q3 & q4 & BR_W)
         | (~SSER & ~BA13 & BA12 & BA7 & q3 & ~BA6 & ~q4 & ~BA5 & ~q5 & BA4 & ~q6 & BR_W)
         | (~SSER & ~BA13 & BA12 & ~q2 & q3 & BR_W)
         | (~SSER & ~BA13 & ~q1 & BA12 & q2 & ~q4 & BR_W));
  assign p16 = ~oe ? ~q3 : 1'bz;

  /* OLMC 4 */
  reg q4;
  always @(posedge clk)
    q4 <= ((~SSER & ~BA13 & BA12 & q2 & q4 & BR_W)
         | (~SSER & ~BA13 & q1 & BA12 & q2 & ~BA7 & q3 & ~BA6 & BA5 & ~q5 & ~BA4 & q6 & BR_W)
         | (~SSER & ~BA13 & q1 & BA12 & q2 & BA7 & q3 & ~BA6 & ~BA5 & q5 & ~BA4 & q6 & BR_W)
         | (~SSER & ~BA13 & q1 & BA12 & q4 & BR_W)
         | (~SSER & ~BA13 & q1 & BA12 & q2 & BA7 & q3 & ~BA6 & BA5 & q5 & ~BA4 & ~q6 & BR_W)
         | (~SSER & ~BA13 & BA12 & q3 & q4 & BR_W)
         | (~SSER & ~BA13 & q1 & BA12 & q2 & BA7 & q3 & ~BA6 & ~BA5 & ~q5 & BA4 & ~q6 & BR_W));
  assign p15 = ~oe ? ~q4 : 1'bz;

  /* OLMC 5 */
  reg q5;
  always @(posedge clk)
    q5 <= ((~SSER & ~BA13 & BA12 & BA7 & ~BA6 & ~q4 & ~BA5 & q5 & ~BA4 & q6 & BR_W)
         | (~SSER & ~BA13 & BA12 & ~BA7 & BA6 & q4 & ~BA5 & q5 & BA4 & ~q6 & BR_W)
         | (~SSER & ~BA13 & q1 & BA12 & q4 & q5 & BR_W)
         | (~SSER & ~BA13 & ~q1 & BA12 & q2 & q5 & BR_W)
         | (~SSER & ~BA13 & BA12 & ~q2 & q3 & q5 & BR_W)
         | (~SSER & ~BA13 & BA12 & BA7 & ~BA6 & ~q4 & BA5 & q5 & ~BA4 & ~q6 & BR_W)
         | (~SSER & ~BA13 & BA12 & ~q3 & ~q4 & q5 & BR_W)
         | (~SSER & ~BA13 & ~q1 & BA12 & ~q2 & ~BA7 & ~q3 & ~BA6 & q4 & BA5 & ~q5 & BA4 & ~q6 & BR_W));
  assign p14 = ~oe ? ~q5 : 1'bz;

  /* OLMC 6 */
  reg q6;
  always @(posedge clk)
    q6 <= ((~SSER & ~BA13 & BA12 & ~BA7 & ~BA6 & ~q4 & BA5 & ~q5 & ~BA4 & q6 & BR_W)
         | (~SSER & ~BA13 & BA12 & BA7 & BA6 & q4 & ~BA5 & q5 & ~BA4 & q6 & BR_W)
         | (~SSER & ~BA13 & q1 & BA12 & q4 & q6 & BR_W)
         | (~SSER & ~BA13 & ~q1 & BA12 & q2 & q6 & BR_W)
         | (~SSER & ~BA13 & BA12 & ~q2 & q3 & q6 & BR_W)
         | (~SSER & ~BA13 & BA12 & BA7 & ~BA6 & ~q4 & ~BA5 & q5 & ~BA4 & q6 & BR_W)
         | (~SSER & ~BA13 & BA12 & ~q3 & ~q4 & q6 & BR_W)
         | (~SSER & ~BA13 & ~q1 & BA12 & ~q2 & ~BA7 & ~q3 & BA6 & q4 & ~BA5 & q5 & BA4 & ~q6 & BR_W));
  assign p13 = ~oe ? ~q6 : 1'bz;

  always @(*) begin
    if      (~SSER & ~BA13 & BA12 & ~q3 & BR_W) /* olmc 0 */
      SDRD = ((~q1 & ~q4 & q6)
            | (q1  & q4  & q6)
            | (q1  & ~q4 & ~q6)
            | (~q1 & q4  & ~q6));
    else if (~SSER & ~BA13 & BA12 & q3 & BR_W)  /* olmc 7 */
      SDRD = ((~q1 & ~q4 & q6)
            | (q1  & q4  & q6)
            | (q1  & ~q4 & ~q6)
            | (~q1 & q4  & ~q6));
    else // dead case
      SDRD = 1'bz;
  end
endmodule
