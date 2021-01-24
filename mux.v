module mux(x0,y0,S,Out);
	input x0,y0, S;
	output Out;

	and(a1,x0,~S);
	and(a2,y0,S);
	
	or(Out,a1,a2);

endmodule


module fourBitMux(x0,x1,x2,x3,y0,y1,y2,y3,S,Out0,Out1,Out2,Out3);
	input x0,x1,x2,x3,y0,y1,y2,y3,S;
	output Out0,Out1,Out2,Out3;
	
	mux zero(x0,y0,S,Out0);
	mux one(x1,y1,S,Out1);
	mux two(x2,y2,S,Out2);
	mux three(x3,y3,S,Out3);	

endmodule
