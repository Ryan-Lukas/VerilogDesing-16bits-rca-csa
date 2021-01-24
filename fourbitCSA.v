module fourbitCSA(x0,x1,x2,x3,y0,y1,y2,y3,Cin,Cout,s0,s1,s2,s3);
	input x0,x1,x2,x3,y0,y1,y2,y3,Cin;
	output Cout,s0,s1,s2,s3;
	
	wire Cout0,s00,s10,s20,s30,Cout1,s01,s11,s21,s31;
	
	fourbitRCA zero(x0,x1,x2,x3,y0,y1,y2,y3,1'b0,Cout0,s00,s10,s20,s30);
	fourbitRCA one(x0,x1,x2,x3,y0,y1,y2,y3,1'b1,Cout1,s01,s11,s21,s31);
	
	mux out(Cout0,Cout1,Cin,Cout);
	mux bit0(s00,s01,Cin,s0);
	mux bit1(s10,s11,Cin,s1);
	mux bit2(s20,s21,Cin,s2);
	mux bit3(s30,s31,Cin,s3);
	
endmodule


