module alu_4bit (
    input [3:0] A,
    input [3:0] B,
    input [2:0] sel,
    output reg [3:0] result,
    output reg carry
);

always @(*) begin
    case(sel)
        3'b000: {carry, result} = A + B;
        3'b001: {carry, result} = A - B;
        3'b010: result = A & B;
        3'b011: result = A | B;
        3'b100: result = A ^ B;
        3'b101: result = ~A;
        3'b110: result = A << 1;
        3'b111: result = A >> 1;
    endcase
end

endmodule
