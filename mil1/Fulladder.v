module halfadder(A,B,carry,sum);
input A;
input B;
output carry;
output sum;
xor sumgate (sum,A,B);
and carrygate (carry,A,B);
endmodule 
module onebitfulladder(x,y,z,s,c);
input x;
input y;
input z;
output s;
output c;
wire s1;
wire c1;
wire c2;
halfadder h1 (x,y,c1,s1);
halfadder h2 (s1,z,c2,s);
or g1 (c,c1,c2);
endmodule 
module Fulladder(a0,a1,b0,b1,cin,cout,sum0,sum1);
input a0,a1,b0,b1,cin;
output sum0,sum1,cout;
wire cx;
onebitfulladder f1 (a0,b0,cin,sum0,cx);
onebitfulladder f2 (a1,b1,cx,sum1,cout);
endmodule 