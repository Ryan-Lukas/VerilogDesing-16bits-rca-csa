module fourbitRCA(x0,x1,x2,x3,y0,y1,y2,y3,Cin,Cout,s0,s1,s2,s3);
	input x0,x1,x2,x3,y0,y1,y2,y3,Cin;
	output Cout,s0,s1,s2,s3;
	
	onebitAdder U0(x0,y0,Cin,s0, Cout0);
	onebitAdder U1(x1,y1,Cout0,s1, Cout1);
	onebitAdder U2(x2,y2,Cout1,s2, Cout2);
	onebitAdder U3(x3,y3,Cout2,s3, Cout);
	
	
	
endmodule
