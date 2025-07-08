`timescale 1ns/1ps
module tb_gates;

reg a, b, sel;
wire y_and, y_or, y_xor, y_not, y_mux;

and_gate   u1(.a(a), .b(b), .y(y_and));
or_gate    u2(.a(a), .b(b), .y(y_or));
xor_gate   u3(.a(a), .b(b), .y(y_xor));
not_gate   u4(.a(a), .y(y_not));
mux2to1    u5(.a(a), .b(b), .sel(sel), .y(y_mux));

initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0, tb_gates);

  a = 0; b = 0; sel = 0; #10;
  a = 0; b = 1; sel = 0; #10;
  a = 1; b = 0; sel = 1; #10;
  a = 1; b = 1; sel = 1; #10;

  $finish;
end

endmodule

