module halfsub(a,b,diff,bout);
input a;
input b;
output diff;
output bout;
assign diff=a^b;
assign bout = ~a & b;
endmodule 
module onebitfullsub(x,y,bin,diff,bout);
input x;
input y;
input bin;
output diff;
output bout;
wire d1;
wire b1;
wire b2;
halfsub h1 (x,y,d1,b1);
halfsub h2 (d1,bin,diff,b2);
assign bout=b1|b2;
endmodule
module Fullsubtractor(a0,a1,b0,b1,bin,bout,diff0,diff1);
input a0,a1,b0,b1,bin;
output diff0,diff1,bout;
wire bx;
onebitfullsub o1 (a0,b0,bin,diff0,bx);
onebitfullsub o2 (a1,b1,bx,diff1,bout);
endmodule 