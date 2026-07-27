module AND_gate_tb;

reg a;
reg b;
wire y;

AND_gate uut(
    .a(a),
    .b(b),
    .y(y)
);

initial begin

$dumpfile("dump.vcd");
$dumpvars(0, AND_gate_tb);

a=0;
b=0;
#10;

a=0;
b=1;
#10;

a=1;
b=0;
#10;

a=1;
b=1;
#10;

$finish;

end

endmodule