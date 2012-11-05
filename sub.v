module Sub32Bit(
	output [31:0] out,
	output [31:0] cout,
	input [31:0] a,
	input [31:0] b
	);
	wire [31:0] twosComp;
	sign(twosComp,b);
	Adder32Bit SubAdder(out,cout,a,twosComp)


endmodule