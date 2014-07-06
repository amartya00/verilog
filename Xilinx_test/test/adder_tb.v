`timescale 1ns / 1ps

module adder_tb;
  reg  [7:0] A;
  reg  [7:0] B;
  wire [7:0] Sum;
  
  //Testbed begins here
  initial begin
       A=1;
	    B=3;
	 
	 #5 A=2;
	    B=5;
		 
	 #5 A=4;
	    B=9;
		 
	 #7 $finish;
  end
  
  //Instantiate adder
  adder A1(.A(A), .B(B), .Sum(Sum));
endmodule
