module not_gate(input a , output reg y);
    always @(*) begin 
	    y = ~a;
    end 
endmodule 
