module MUX(and_out, or_out, xor_out, adder_out, sub_out,mult, sel, out);
input [1:0] xor_out; 
input [1:0] and_out;
input [1:0] or_out;
input [1:0] adder_out;
input [1:0] sub_out;
input [3:0] mult;
input [2:0] sel;
output reg [3:0] out;
always @ (and_out or or_out or xor_out or adder_out or sub_out or mult or sel)
begin 
case (sel) //depending on sel we have cases for each operation
3'b000 : out <= and_out;
3'b001 : out <= or_out;
3'b010 : out <= xor_out;
3'b011 : out <=adder_out;
3'b100 : out <= sub_out;
3'b101 : out <= mult;
default : out <= 3'b000;
//no default added
endcase 
end
endmodule
