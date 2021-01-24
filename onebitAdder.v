module onebitAdder(x,y, Cin, S, Cout);
	input x,y, Cin;	
	output S, Cout;

	xor(w0,x,y);
	and(w1,x,y);
	xor(S, w0, Cin);
	and(w3, w0, Cin);
	or(Cout,w3,w1); 

endmodule
