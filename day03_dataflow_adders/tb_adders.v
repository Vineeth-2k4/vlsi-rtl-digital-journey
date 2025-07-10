`timescale 1ns/1ps
module tb_adders;

reg [3:0] a, b;
reg cin;
wire [3:0] sum;
wire cout;

rca_4bit UUT (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0, tb_adders);

  a = 4'b0001; b = 4'b0010; cin = 0; #10;
  a = 4'b0101; b = 4'b0011; cin = 0; #10;
  a = 4'b1111; b = 4'b0001; cin = 0; #10;

  $finish;
end

endmodule

