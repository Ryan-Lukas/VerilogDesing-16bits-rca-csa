module RCA16(x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,Cin,Cout,s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15);
	input x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,Cin;
	output Cout,s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15;
	
	fourbitRCA U0(x0,x1,x2,x3,y0,y1,y2,y3,Cin,Cout1,s0,s1,s2,s3);
	fourbitRCA U1(x4,x5,x6,x7,y4,y5,y6,y7,Cout1,Cout2,s4,s5,s6,s7);
	fourbitRCA U2(x8,x9,x10,x11,y8,y9,y10,y11,Cout2,Cout3,s8,s9,s10,s11);
	fourbitRCA U3(x12,x13,x14,x15,y12,y13,y14,y15,Cout3,Cout,s12,s13,s14,s15);	
	
	
endmodule
