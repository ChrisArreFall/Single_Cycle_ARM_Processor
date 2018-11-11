module tb_REG_EN();
	logic clk,reset,enable;
	logic [1:0] in, out;
	// instantiate device to be tested 
	REG_EN dut(clk,reset,enable,in,out);
	// initialize test 
	initial 
		begin  
			enable <= 1;
			reset <= 0;
			# 100
			reset <= 1;
		end
	always 
		begin 
			clk <= 1; 
			# 5; 
			clk <= 0; 
			# 5;
		end
	always 
		begin  
			# 10; 
			in  <= 2'b00;
			# 10; 
			in  <= 2'b01;
			# 10; 
			in  <= 2'b10;
			enable <= 0;
			# 10; 
			in  <= 2'b11;
			# 10; 
			in  <= 2'b10;
			# 10;
			enable <= 1;
			in  <= 2'b01;
		end
endmodule