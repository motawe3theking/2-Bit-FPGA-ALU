module TopALU(
    input [1:0] A,
    input [1:0] B,
    input [2:0] select,
    output  [3:0] ALU_Out
);
    // Internal signals
    wire [1:0] AND_Out, OR_Out, XOR_Out;
    wire [3:0] SUM, DIFF, PROD;
    // Instantiate submodules
    bit2_and and_gate(A, B, AND_Out);
    bit2_or or_gate(A, B, OR_Out);
    bit2_xor xor_gate(A, B, XOR_Out);
    Fulladder adder(A[0], A[1], B[0], B[1],0 , SUM[2], SUM[0], SUM[1]);
    Fullsubtractor subtractor(A[0],A[1], B[0], B[1],0, DIFF[2], DIFF[0], DIFF[1]);
    multiplier multiplier(A, B, PROD);
wire [1:0] adder_out = {SUM[1], SUM[0]};
wire [1:0] sub_out = {DIFF[1], DIFF[0]};
MUX mux(AND_Out, OR_Out, XOR_Out, adder_out, sub_out, PROD, select,ALU_Out);
//module MUX(and_out, or_out, xor_out, adder_out, sub_out,mult, sel, out);
endmodule

module bit2_and(
	input [1:0] A,
   input [1:0] B,
	output [1:0] out);
	assign out[0] = A[0]&B[0];
	assign out[1] = A[1]&B[1];
endmodule
module bit2_or(
	input [1:0] A,
   input [1:0] B,
	output [1:0] out);
	assign out[0] = A[0]|B[0];
	assign out[1] = A[1]|B[1];
endmodule
module bit2_xor(
	input [1:0] A,
   input [1:0] B,
	output [1:0] out);
	assign out[0] = A[0]^B[0];
	assign out[1] = A[1]^B[1];
endmodule
