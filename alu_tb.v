module alu_tb;

reg [3:0] A, B;
reg [2:0] sel;
wire [3:0] result;
wire carry;

alu uut(A, B, sel, result, carry);

initial begin

  $dumpfile("alu.vcd");
  $dumpvars(0, alu_tb);

  A=4'b0101; B=4'b0011; sel=3'b000;
  #10 sel=3'b001;
  #10 sel=3'b010;
  #10 sel=3'b011;
  #10 sel=3'b100;
  #10 sel=3'b101;
  #10 sel=3'b110;
  #10 sel=3'b111;

  #10 $finish;

end

endmodule
