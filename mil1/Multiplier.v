module HA (a,b,s,c); 
	input a,b; 
	output s,c; 
	xor G1 (s,a,b); 
	and G2 (c,a,b); 
endmodule 


module multiplier (a,b,m);
	input [1:0] a,b;
	output [3:0] m;
	wire[1:0] x,y;

	assign m[0] = a[0]&b[0];
	assign x[0] = a[1]&b[0];
	assign x[1]=a[1]&b[1];
	assign y[0] = a[0]&b[1];

	HA HA1(x[0],y[0],m[1],y[1]);
	HA HA2(x[1],y[1],m[2],m[3]);
endmodule 
