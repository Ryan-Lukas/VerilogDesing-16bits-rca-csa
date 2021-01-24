`timescale 1ns/1ps
//Testing four bit CSA
module testBenchCSA16;

reg x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,Cin;
wire Cout,s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15;

	


		CSA16 UUT(x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,Cin,Cout,s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15);

integer i;
integer x;
initial begin

	i = 33'b10000000000000001000000000000000;
	{Cin,x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15} = i;
	#60
	if(s0 != 0 && s1!= 1)begin
		$error("error");
		end
	else
		begin
			$display("Cin = %b",Cin);
			$display("x = %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b ",x15,x14,x13,x12,x11,x10,x9,x8,x7,x6,x5,x4,x3,x2,x1,x0);
			$display("y = %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b ",y15,y14,y13,y12,y11,y10,y9,y8,y7,y6,y5,y4,y3,y2,y1,y0);
			$display("s = %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b ",s15,s14,s13,s12,s11,s10,s9,s8,s7,s6,s5,s4,s3,s2,s1,s0);
		end
		
	i = 33'b10000000000111111000000011111111;
	{Cin,x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15} = i;
	#60
			$display("Cin = %b",Cin);
			$display("x = %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b ",x15,x14,x13,x12,x11,x10,x9,x8,x7,x6,x5,x4,x3,x2,x1,x0);
			$display("y = %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b ",y15,y14,y13,y12,y11,y10,y9,y8,y7,y6,y5,y4,y3,y2,y1,y0);
			$display("s = %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b ",s15,s14,s13,s12,s11,s10,s9,s8,s7,s6,s5,s4,s3,s2,s1,s0);
		
	i = 33'b10011110000000111011000011111111;
	{Cin,x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15} = i;
	#60
			$display("Cin = %b",Cin);
			$display("x = %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b ",x15,x14,x13,x12,x11,x10,x9,x8,x7,x6,x5,x4,x3,x2,x1,x0);
			$display("y = %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b ",y15,y14,y13,y12,y11,y10,y9,y8,y7,y6,y5,y4,y3,y2,y1,y0);
			$display("s = %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b ",s15,s14,s13,s12,s11,s10,s9,s8,s7,s6,s5,s4,s3,s2,s1,s0);

for(i = 0; i< 99999999 ;i = i+1)
	begin
		{Cin,x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15} = i;
		#60;
		
		//1+1			
		if(i == 33'b000000000000111111111111111100000)
			begin
				x = 0;
				if(Cout !== 0)
				begin
					$error("Error: Cout");
					x = 1;
					end
				else if(s0 !== 1)
				begin
					$error("Error: s0");
					x = 1;
					end
				else if(s1 !== 1)
				begin
					$error("Error: s1");
					x = 1;
					end
				else if(s2 !== 1)
				begin
					$error("Error: s2");
					x = 1;
					end
				else if(s3 !== 1)
				begin
					$error("Error: s3");
					x = 1;
					end
				else if(s4 !== 1)
				begin
					$error("Error: s4");
					x = 1;
					end
				else if(s5 !== 1)
				begin
					$error("Error: s5");
					x = 1;
					end
				else if(s6 !== 1)
				begin
					$error("Error: s6");
					x = 1;
					end
				else if(s7 !== 1)
				begin
					$error("Error: s7");
					x = 1;
					end
				else if(s8 !== 1)
				begin
					$error("Error: s8");
					x = 1;
					end
				else if(s9 !== 1)
				begin
					$error("Error: s9");
					x = 1;
					end
				else if(s10 !== 1)
				begin
					$error("Error: s10");
					x = 1;
					end
				else if(s11 !== 1)
				begin
					$error("Error: s11");
					x = 1;
					end
				else if(s12 !== 1)
				begin
					$error("Error: s12");
					x = 1;
					end
				else if(s13 !== 1)
				begin
					$error("Error: s13");
					x = 1;
					end
				else if(s14 !== 1)
				begin
					$error("Error: s14");
					x = 1;
					end
				else if(s15 !== 1)
				begin
					$error("Error: s15");
					x = 1;
					end
				
				
				if( x == 0)
					begin
					$display("test1");
					$display("x = %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b ",x15,x14,x13,x12,x11,x10,x9,x8,x7,x6,x5,x4,x3,x2,x1,x0);
					$display("y = %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b ",y15,y14,y13,y12,y11,y10,y9,y8,y7,y6,y5,y4,y3,y2,y1,y0);
					$display("s = %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b ",s15,s14,s13,s12,s11,s10,s9,s8,s7,s6,s5,s4,s3,s2,s1,s0);
					end
				
			end

		if(i == 33'b100000000000000000000000000011111)
			begin
				x = 0;
				if(Cout !== 0)
				begin
					$error("Error: Cout");
					x = 1;
					end
				else if(s0 !== 1)
				begin
					$error("Error: s0");
					x = 1;
					end
				else if(s1 !== 0)
				begin
					$error("Error: s1");
					x = 1;
					end
				else if(s2 !== 0)
				begin
					$error("Error: s2");
					x = 1;
					end
				else if(s3 !== 0)
				begin
					$error("Error: s3");
					x = 1;
					end
				else if(s4 !== 0)
				begin
					$error("Error: s4");
					x = 1;
					end
				else if(s5 !== 0)
				begin
					$error("Error: s5");
					x = 1;
					end
				else if(s6 !== 0)
				begin
					$error("Error: s6");
					x = 1;
					end
				else if(s7 !== 0)
				begin
					$error("Error: s7");
					x = 1;
					end
				else if(s8 !== 0)
				begin
					$error("Error: s8");
					x = 1;
					end
				else if(s9 !== 0)
				begin
					$error("Error: s9");
					x = 1;
					end
				else if(s10 !== 0)
				begin
					$error("Error: s10");
					x = 1;
					end
				else if(s11 !== 1)
				begin
					$error("Error: s11");
					x = 1;
					end
				else if(s12 !== 1)
				begin
					$error("Error: s12");
					x = 1;
					end
				else if(s13 !== 1)
				begin
					$error("Error: s13");
					x = 1;
					end
				else if(s14 !== 1)
				begin
					$error("Error: s14");
					x = 1;
					end
				else if(s15 !== 1)
				begin
					$error("Error: s15");
					x = 1;
					end
				
				
				if( x == 0)
					begin
					$display("test2");
					$display("x = %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b ",x15,x14,x13,x12,x11,x10,x9,x8,x7,x6,x5,x4,x3,x2,x1,x0);
					$display("y = %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b ",y15,y14,y13,y12,y11,y10,y9,y8,y7,y6,y5,y4,y3,y2,y1,y0);
					$display("s = %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b ",s15,s14,s13,s12,s11,s10,s9,s8,s7,s6,s5,s4,s3,s2,s1,s0);
					end
				
			end
		if(i == 33'b100000000000111101111111100000000)
			begin
				x = 0;
				if(Cout !== 0)
				begin
					$error("Error: Cout");
					x = 1;
					end
				else if(s0 !== 0)
				begin
					$error("Error: s0");
					x = 1;
					end
				else if(s1 !== 0)
				begin
					$error("Error: s1");
					x = 1;
					end
				else if(s2 !== 0)
				begin
					$error("Error: s2");
					x = 1;
					end
				else if(s3 !== 0)
				begin
					$error("Error: s3");
					x = 1;
					end
				else if(s4 !== 0)
				begin
					$error("Error: s4");
					x = 1;
					end
				else if(s5 !== 0)
				begin
					$error("Error: s5");
					x = 1;
					end
				else if(s6 !== 0)
				begin
					$error("Error: s6");
					x = 1;
					end
				else if(s7 !== 1)
				begin
					$error("Error: s7");
					x = 1;
					end
				else if(s8 !== 0)
				begin
					$error("Error: s8");
					x = 1;
					end
				else if(s9 !== 0)
				begin
					$error("Error: s9");
					x = 1;
					end
				else if(s10 !== 0)
				begin
					$error("Error: s10");
					x = 1;
					end
				else if(s11 !== 1)
				begin
					$error("Error: s11");
					x = 1;
					end
				else if(s12 !== 1)
				begin
					$error("Error: s12");
					x = 1;
					end
				else if(s13 !== 1)
				begin
					$error("Error: s13");
					x = 1;
					end
				else if(s14 !== 1)
				begin
					$error("Error: s14");
					x = 1;
					end
				else if(s15 !== 0)
				begin
					$error("Error: s15");
					x = 1;
					end
				
				
				if( x == 0)
					begin
					$display("test3");
					end
				
			end
		if(i == 33'b000000000010101011010101010101010)
			begin
				x = 0;
				if(Cout !== 0)
				begin
					$error("Error: Cout");
					x = 1;
					end
				else if(s0 !== 1)
				begin
					$error("Error: s0");
					x = 1;
					end
				else if(s1 !== 0)
				begin
					$error("Error: s1");
					x = 1;
					end
				else if(s2 !== 1)
				begin
					$error("Error: s2");
					x = 1;
					end
				else if(s3 !== 0)
				begin
					$error("Error: s3");
					x = 1;
					end
				else if(s4 !== 1)
				begin
					$error("Error: s4");
					x = 1;
					end
				else if(s5 !== 0)
				begin
					$error("Error: s5");
					x = 1;
					end
				else if(s6 !== 1)
				begin
					$error("Error: s6");
					x = 1;
					end
				else if(s7 !== 0)
				begin
					$error("Error: s7");
					x = 1;
					end
				else if(s8 !== 1)
				begin
					$error("Error: s8");
					x = 1;
					end
				else if(s9 !== 1)
				begin
					$error("Error: s9");
					x = 1;
					end
				else if(s10 !== 1)
				begin
					$error("Error: s10");
					x = 1;
					end
				else if(s11 !== 1)
				begin
					$error("Error: s11");
					x = 1;
					end
				else if(s12 !== 1)
				begin
					$error("Error: s12");
					x = 1;
					end
				else if(s13 !== 1)
				begin
					$error("Error: s13");
					x = 1;
					end
				else if(s14 !== 1)
				begin
					$error("Error: s14");
					x = 1;
					end
				else if(s15 !== 1)
				begin
					$error("Error: s15");
					x = 1;
					end
				
				
				if( x == 0)
					begin
					$display("test4");
					$display("x = %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b ",x15,x14,x13,x12,x11,x10,x9,x8,x7,x6,x5,x4,x3,x2,x1,x0);
					$display("y = %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b ",y15,y14,y13,y12,y11,y10,y9,y8,y7,y6,y5,y4,y3,y2,y1,y0);
					$display("s = %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b ",s15,s14,s13,s12,s11,s10,s9,s8,s7,s6,s5,s4,s3,s2,s1,s0);
					end
				
			end
		
		if(i == 33'b000000000111111111111111100000000)
			begin
				x = 0;
				if(Cout !== 0)
				begin
					$error("Error: Cout");
					x = 1;
					end
				else if(s0 !== 1)
				begin
					$error("Error: s0");
					x = 1;
					end
				else if(s1 !== 1)
				begin
					$error("Error: s1");
					x = 1;
					end
				else if(s2 !== 1)
				begin
					$error("Error: s2");
					x = 1;
					end
				else if(s3 !== 1)
				begin
					$error("Error: s3");
					x = 1;
					end
				else if(s4 !== 1)
				begin
					$error("Error: s4");
					x = 1;
					end
				else if(s5 !== 1)
				begin
					$error("Error: s5");
					x = 1;
					end
				else if(s6 !== 1)
				begin
					$error("Error: s6");
					x = 1;
					end
				else if(s7 !== 1)
				begin
					$error("Error: s7");
					x = 1;
					end
				else if(s8 !== 1)
				begin
					$error("Error: s8");
					x = 1;
					end
				else if(s9 !== 1)
				begin
					$error("Error: s9");
					x = 1;
					end
				else if(s10 !== 1)
				begin
					$error("Error: s10");
					x = 1;
					end
				else if(s11 !== 1)
				begin
					$error("Error: s11");
					x = 1;
					end
				else if(s12 !== 1)
				begin
					$error("Error: s12");
					x = 1;
					end
				else if(s13 !== 1)
				begin
					$error("Error: s13");
					x = 1;
					end
				else if(s14 !== 1)
				begin
					$error("Error: s14");
					x = 1;
					end
				else if(s15 !== 1)
				begin
					$error("Error: s15");
					x = 1;
					end
				
				
				if( x == 0)
					begin
					$display("test5");
					$display("x = %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b ",x15,x14,x13,x12,x11,x10,x9,x8,x7,x6,x5,x4,x3,x2,x1,x0);
					$display("y = %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b ",y15,y14,y13,y12,y11,y10,y9,y8,y7,y6,y5,y4,y3,y2,y1,y0);
					$display("s = %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b ",s15,s14,s13,s12,s11,s10,s9,s8,s7,s6,s5,s4,s3,s2,s1,s0);
					end
				
			end
		if(i == 33'b000000000110000001110000000000000)
			begin
				x = 0;
				if(Cout !== 0)
				begin
					$error("Error: Cout");
					x = 1;
					end
				else if(s0 !== 1)
				begin
					$error("Error: s0");
					x = 1;
					end
				else if(s1 !== 1)
				begin
					$error("Error: s1");
					x = 1;
					end
				else if(s2 !== 1)
				begin
					$error("Error: s2");
					x = 1;
					end
				else if(s3 !== 0)
				begin
					$error("Error: s3");
					x = 1;
					end
				else if(s4 !== 0)
				begin
					$error("Error: s4");
					x = 1;
					end
				else if(s5 !== 0)
				begin
					$error("Error: s5");
					x = 1;
					end
				else if(s6 !== 0)
				begin
					$error("Error: s6");
					x = 1;
					end
				else if(s7 !== 0)
				begin
					$error("Error: s7");
					x = 1;
					end
				else if(s8 !== 1)
				begin
					$error("Error: s8");
					x = 1;
					end
				else if(s9 !== 1)
				begin
					$error("Error: s9");
					x = 1;
					end
				else if(s10 !== 0)
				begin
					$error("Error: s10");
					x = 1;
					end
				else if(s11 !== 0)
				begin
					$error("Error: s11");
					x = 1;
					end
				else if(s12 !== 0)
				begin
					$error("Error: s12");
					x = 1;
					end
				else if(s13 !== 0)
				begin
					$error("Error: s13");
					x = 1;
					end
				else if(s14 !== 0)
				begin
					$error("Error: s14");
					x = 1;
					end
				else if(s15 !== 0)
				begin
					$error("Error: s15");
					x = 1;
					end
				
				
				if( x == 0)
					begin
					$display("test6");
					$display("x = %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b ",x15,x14,x13,x12,x11,x10,x9,x8,x7,x6,x5,x4,x3,x2,x1,x0);
					$display("y = %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b ",y15,y14,y13,y12,y11,y10,y9,y8,y7,y6,y5,y4,y3,y2,y1,y0);
					$display("s = %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b ",s15,s14,s13,s12,s11,s10,s9,s8,s7,s6,s5,s4,s3,s2,s1,s0);
					end
				
			end
		if(i == 33'b000000000001110001101101001110000)
			begin
				x = 0;
				if(Cout !== 0)
				begin
					$error("Error: Cout");
					x = 1;
					end
				else if(s0 !== 1)
				begin
					$error("Error: s0");
					x = 1;
					end
				else if(s1 !== 1)
				begin
					$error("Error: s1");
					x = 1;
					end
				else if(s2 !== 0)
				begin
					$error("Error: s2");
					x = 1;
					end
				else if(s3 !== 1)
				begin
					$error("Error: s3");
					x = 1;
					end
				else if(s4 !== 1)
				begin
					$error("Error: s4");
					x = 1;
					end
				else if(s5 !== 0)
				begin
					$error("Error: s5");
					x = 1;
					end
				else if(s6 !== 1)
				begin
					$error("Error: s6");
					x = 1;
					end
				else if(s7 !== 0)
				begin
					$error("Error: s7");
					x = 1;
					end
				else if(s8 !== 0)
				begin
					$error("Error: s8");
					x = 1;
					end
				else if(s9 !== 1)
				begin
					$error("Error: s9");
					x = 1;
					end
				else if(s10 !== 0)
				begin
					$error("Error: s10");
					x = 1;
					end
				else if(s11 !== 1)
				begin
					$error("Error: s11");
					x = 1;
					end
				else if(s12 !== 0)
				begin
					$error("Error: s12");
					x = 1;
					end
				else if(s13 !== 1)
				begin
					$error("Error: s13");
					x = 1;
					end
				else if(s14 !== 0)
				begin
					$error("Error: s14");
					x = 1;
					end
				else if(s15 !== 0)
				begin
					$error("Error: s15");
					x = 1;
					end
				
				
				if( x == 0)
					begin
					$display("test7");
					$display("x = %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b ",x15,x14,x13,x12,x11,x10,x9,x8,x7,x6,x5,x4,x3,x2,x1,x0);
					$display("y = %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b ",y15,y14,y13,y12,y11,y10,y9,y8,y7,y6,y5,y4,y3,y2,y1,y0);
					$display("s = %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b ",s15,s14,s13,s12,s11,s10,s9,s8,s7,s6,s5,s4,s3,s2,s1,s0);
					end
				
			end

	end
end
endmodule
