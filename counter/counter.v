//------------------Counter ptogram-------------------//

module counter(
    input  wire clk,
    input  wire rst,
    input  wire en,
    output reg [3:0] count
    );

  //Always block
  always @(posedge clk) begin
    if(rst==1'b1) begin
	   count<=0;
	 end else begin
	   if(en==1'b1) begin
		  count<=count+1;
		end
	 end
  end

endmodule
