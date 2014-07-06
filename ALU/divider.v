/*

Code for divider module of ALU

*/

module divider(
    input  wire[31:0] A,
    input  wire[31:0] B,
    output wire[31:0] div
    );

  //Assign statement
  assign div=A/B;

endmodule
