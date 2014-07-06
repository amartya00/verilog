module adder(in1,in2,out);
input [7:0] in1;
inout [7:0] in2;
output[8:0] out;
endmodule



module main;
  initial
    begin
      $display("Hello World\n");
      $finish;
    end	
endmodule

