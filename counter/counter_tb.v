//-----------------Counter testbed------------------------//

`timescale 1ns / 1ps

module counter_tb(
    );

  reg clk, rst, en;
  wire [3:0] count;
  
  //Clock block
  always begin
    #1 clk = ~clk;
  end
  
  //Simulation module
  initial begin
       clk=0;
       rst=1;
	    en=0;
		 
	 #3 rst=0;
	    en=1;
		 
	 #20 $finish;
  end
  
  //Instantiate the counter
  counter C1(.clk(clk), .rst(rst), .en(en), .count(count));

endmodule


