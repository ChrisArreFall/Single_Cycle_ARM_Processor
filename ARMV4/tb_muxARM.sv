module tb_muxARM();
	logic selector; 
	logic [7:0] A, B,out;
	// instantiate device to be tested 
	muxARM dut(selector,A,B,out);
	// initialize test 
	initial begin  
		A        <= 8'b11110000;
		B			<= 8'b1111;
	end
	always 
	begin 
		selector <= 1; 
		# 5; 
		selector <= 0; 
		# 5; 
	end
endmodule
