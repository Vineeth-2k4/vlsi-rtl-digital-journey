module mux2to1(input a, input b , input sel , output reg y);
   always @(*) begin 
	   y = sel ? b: a;
   end 
endmodule 
