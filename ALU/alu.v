
module alu(
    input  wire [31:0] A,
    input  wire [31:0] B,
    input  wire [1:0] sel,
	 output reg  [31:0] X,
    output reg  err
    );
	 
  //Always block
  always @(A or B or sel) begin
    case (sel) 
	   0      : begin X<=A+B; err<=0; end
		1      : begin X<=A-B; err<=0; end
		2      : begin X<=A*B; err<=0; end
		default: begin X<=0  ; err<=1; end
	 endcase
  end

endmodule
