`timescale 1ns/1ps
module tb_gates;

reg A, B;
wire Y_and, Y_or, Y_xor, Y_not;

and_gate uut_and (.A(A), .B(B), .Y(Y_and));
or_gate  uut_or  (.A(A), .B(B), .Y(Y_or));
xor_gate uut_xor (.A(A), .B(B), .Y(Y_xor));
not_gate uut_not (.A(A), .Y(Y_not));

initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0, tb_gates);
    
    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;

    $finish;
end

endmodule

