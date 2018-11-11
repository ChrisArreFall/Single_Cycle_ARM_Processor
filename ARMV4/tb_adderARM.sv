module tb_adderARM();
	logic [7:0] A, B,out;
	// instantiate device to be tested 
	adderARM dut(A,B,out);
	// initialize test 
	initial begin  
		A        <= 8'b0001;
		B			<= 8'b0001;
	end
	always 
		begin  
			# 5; 
			A        <= 8'b0001;
			B			<= 8'b0011;
			# 5; 
			A        <= 8'b10000111;
			B			<= 8'b0001;
		end
endmodule
