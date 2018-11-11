module tb_extend();
	logic [1:0] immSrc;
	logic [23:0] second_source_register;
	logic [31:0] extImm;
	// instantiate device to be tested 
	extend dut(immSrc,second_source_register,extImm);
	// initialize test 
	always 
		begin 
			# 5; 
			immSrc <= 2'b00; 
			second_source_register <= 24'b111111111111111111111111;
			# 5; 
			immSrc <= 2'b01; 
			second_source_register <= 24'b111111111111111111111111; 
			# 5; 
			immSrc <= 2'b10; 
			second_source_register <= 24'b111111111111111111111111;
			# 5; 
			immSrc <= 2'b10; 
			second_source_register <= 24'b011111111111111111111111;
		end
	


endmodule 
