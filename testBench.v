`timescale 1ns/1ps
//Testing four bit RCA
module testBench;

reg x0,x1,x2,x3,y0,y1,y2,y3,Cin;
wire Cout,s0,s1,s2,s3;

	fourbitRCA UUT(.x0(x0),.x1(x1),.x2(x2),.x3(x3),.y0(y0),.y1(y1),.y2(y2),.y3(y3),.Cin(Cin),.Cout(Cout),.s0(s0),.s1(s1),.s2(s2),.s3(s3));
	


integer i;
integer x;
initial begin

for(i = 0; i< 512 ;i = i+1)
	begin
		{Cin,x0,x1,x2,x3,y0,y1,y2,y3} = i;
		#20;
		
		//1+1			
		if(i == 9'b010001000)
			begin
				x = 0;
				if(Cout !== 0)
				begin
					$error("Error 1+1: Cout");
					x = 1;
					end
				else if(s0 !== 0)
				begin
					$error("Error 1+1: s0");
					x = 1;
					end
				else if(s1 !== 1)
				begin
					$error("Error 1+1: s1");
					x = 1;
					end
				else if(s2 !== 0)
				begin
					$error("Error 1+1: s2");
					x = 1;
					end
				else if(s3 !== 0)
				begin
					$error("Error 1+1: s3");
					x = 1;
					end
				
				
				if( x == 0)
					begin
					$display("");
					$display("Cin = %b",Cin);
						$display("x = %b %b %b %b",x3,x2,x1,x0);
					$display("y = %b %b %b %b",y3,y2,y1,y0);
					$display("s = %b %b %b %b",s3,s2,s1,s0);
					end
				
			end
			
		//3+1 +Cin
		if(i == 9'b111001000)
			begin
				x = 0;
				if(Cout !== 0)
				begin
					$error("Error 3+1 +Cin: Cout");
					x = 1;
					end
				else if(s0 !== 1)
				begin
					$error("Error 3+1 +Cin: s0");
					x = 1;
					end
				else if(s1 !== 0)
				begin
					$error("Error 3+1 +Cin: s1");
					x = 1;
					end
				else if(s2 !== 1)
				begin
					$error("Error 3+1 +Cin: s2");
					x = 1;
					end
				else if(s3 !== 0)
				begin
					$error("Error 3+1 +Cin: s3");
					x = 1;
					end
				
				
				if( x == 0)
					begin
					$display("");
					$display("Cin = %b",Cin);
						$display("x = %b %b %b %b",x3,x2,x1,x0);
					$display("y = %b %b %b %b",y3,y2,y1,y0);
					$display("s = %b %b %b %b",s3,s2,s1,s0);
					end
				
			end
			
			

		
	
		//14+5+Cin
		if(i == 9'b110100111)
			begin
				x = 0;
				if(Cout !== 1)
				begin
					$error("Error 14+5+Cin: Cout");
					x = 1;
					end
				else if(s0 !== 0)
				begin
					$error("Error 14+5+Cin: s0");
					x = 1;
					end
				else if(s1 !== 0)
				begin
					$error("Error 14+5+Cin: s1");
					x = 1;
					end
				else if(s2 !== 1)
				begin
					$error("Error 14+5+Cin: s2");
					x = 1;
					end
				else if(s3 !== 0)
				begin
					$error("Error 314+5+Cin: s3");
					x = 1;
					end
				
				
				if( x == 0)
					begin
					$display("");
					$display("Cin = %b",Cin);
						$display("x = %b %b %b %b",x3,x2,x1,x0);
					$display("y = %b %b %b %b",y3,y2,y1,y0);
					$display("s = %b %b %b %b",s3,s2,s1,s0);
					end
				
			end
		//15+15
		if(i == 9'b011111111)
			begin
		
				x = 0;
				if(Cout !== 1)
				begin
					$error("Error 15+15: Cout");
					x = 1;
					end
				else if(s0 !== 0)
				begin
					$error("Error 15+15: s0");
					x = 1;
					end
				else if(s1 !== 1)
				begin
					$error("Error 15+15: s1");
					x = 1;
					end
				else if(s2 !== 1)
				begin
					$error("Error 15+15: s2");
					x = 1;
					end
				else if(s3 !== 1)
				begin
					$error("Error 15+15: s3");
					x = 1;
					end
				
				
				if( x == 0)
					begin
					$display("");
					$display("Cin = %b",Cin);
						$display("x = %b %b %b %b",x3,x2,x1,x0);
					$display("y = %b %b %b %b",y3,y2,y1,y0);
					$display("s = %b %b %b %b",s3,s2,s1,s0);
					end
				
			end
		//13+9
		if(i == 9'b010111001)
			begin
				x = 0;
				if(Cout !== 1)
				begin
					$error("Error 13+9: Cout");
					x = 1;
					end
				else if(s0 !== 0)
				begin
					$error("Error 13+9: s0");
					x = 1;
					end
				else if(s1 !== 1)
				begin
					$error("Error 13+9: s1");
					x = 1;
					end
				else if(s2 !== 1)
				begin
					$error("Error 13+9: s2");
					x = 1;
					end
				else if(s3 !== 0)
				begin
					$error("Error 13+9: s3");
					x = 1;
					end
				
				
				if( x == 0)
					begin
					$display("");
					$display("Cin = %b",Cin);
						$display("x = %b %b %b %b",x3,x2,x1,x0);
					$display("y = %b %b %b %b",y3,y2,y1,y0);
					$display("s = %b %b %b %b",s3,s2,s1,s0);
					end
				
			end
		
		//14+9+Cin
		if(i == 9'b101111001)
			begin
				x = 0;
				if(Cout !== 1)
				begin
					$error("Error 14+9+Cin: Cout");
					x = 1;
					end
				else if(s0 !== 0)
				begin
					$error("Error 14+9+Cin: s0");
					x = 1;
					end
				else if(s1 !== 0)
				begin
					$error("Error 14+9+Cin: s1");
					x = 1;
					end
				else if(s2 !== 0)
				begin
					$error("Error 14+9+Cin: s2");
					x = 1;
					end
				else if(s3 !== 1)
				begin
					$error("Error 14+9+Cin: s3");
					x = 1;
					end
				
				
				if( x == 0)
					begin
					$display("");
					$display("Cin = %b",Cin);
						$display("x = %b %b %b %b",x3,x2,x1,x0);
					$display("y = %b %b %b %b",y3,y2,y1,y0);
					$display("s = %b %b %b %b",s3,s2,s1,s0);
					end
				
			end
		//3+3
		if(i == 9'b011001100)
			begin
				x = 0;
				if(Cout !== 0)
				begin
					$error("Error 3+3: Cout");
					x = 1;
					end
				else if(s0 !== 0)
				begin
					$error("Error 3+3: s0");
					x = 1;
					end
				else if(s1 !== 1)
				begin
					$error("Error 3+3: s1");
					x = 1;
					end
				else if(s2 !== 1)
				begin
					$error("Error 3+3: s2");
					x = 1;
					end
				else if(s3 !== 0)
				begin
					$error("Error 3+3: s3");
					x = 1;
					end
				
				
				if( x == 0)
					begin
					$display("");
					$display("Cin = %b",Cin);
						$display("x = %b %b %b %b",x3,x2,x1,x0);
					$display("y = %b %b %b %b",y3,y2,y1,y0);
					$display("s = %b %b %b %b",s3,s2,s1,s0);
					end
				
			end
		//2+14+Cin
		if(i == 9'b101110100)
			begin
				x = 0;
				if(Cout !== 1)
				begin
					$error("Error 2+14+Cin: Cout");
					x = 1;
					end
				else if(s0 !== 1)
				begin
					$error("Error 2+14+Cin: s0");
					x = 1;
					end
				else if(s1 !== 0)
				begin
					$error("Error 2+14+Cin: s1");
					x = 1;
					end
				else if(s2 !== 0)
				begin
					$error("Error 2+14+Cin: s2");
					x = 1;
					end
				else if(s3 !== 0)
				begin
					$error("Error 2+14+Cin: s3");
					x = 1;
					end
				
				
				if( x == 0)
					begin
					$display("");
					$display("Cin = %b",Cin);
						$display("x = %b %b %b %b",x3,x2,x1,x0);
					$display("y = %b %b %b %b",y3,y2,y1,y0);
					$display("s = %b %b %b %b",s3,s2,s1,s0);
					end
			end
		//0+0
		if(i == 9'b000000000)
			begin
				x = 0;
				if(Cout !== 0)
				begin
					$error("Error 0+0: Cout");
					x = 1;
					end
				else if(s0 !== 0)
				begin
					$error("Error 0+0: s0");
					x = 1;
					end
				else if(s1 !== 0)
				begin
					$error("Error 0+0: s1");
					x = 1;
					end
				else if(s2 !== 0)
				begin
					$error("Error 0+0: s2");
					x = 1;
					end
				else if(s3 !== 0)
				begin
					$error("Error 0+0: s3");
					x = 1;
					end
				
				
				if( x == 0)
					begin
					$display("");
					$display("Cin = %b",Cin);
						$display("x = %b %b %b %b",x3,x2,x1,x0);
					$display("y = %b %b %b %b",y3,y2,y1,y0);
					$display("s = %b %b %b %b",s3,s2,s1,s0);
					end
			end
		//Cin+1
		if(i == 9'b110000000)
			begin
				x = 0;
				if(Cout !== 0)
				begin
					$error("Error Cin+1: Cout");
					x = 1;
					end
				else if(s0 !== 0)
				begin
					$error("Error Cin+1: s0");
					x = 1;
					end
				else if(s1 !== 1)
				begin
					$error("Error Cin+1: s1");
					x = 1;
					end
				else if(s2 !== 0)
				begin
					$error("Error Cin+1: s2");
					x = 1;
					end
				else if(s3 !== 0)
				begin
					$error("Error Cin+1: s3");
					x = 1;
					end
				
				
				if( x == 0)
					begin
					$display("");
					$display("Cin = %b",Cin);
						$display("x = %b %b %b %b",x3,x2,x1,x0);
					$display("y = %b %b %b %b",y3,y2,y1,y0);
					$display("s = %b %b %b %b",s3,s2,s1,s0);
					end
			end
	end

end

endmodule
