module tb_ARMV4();
	logic clk, reset = 0;
	logic [31:0] Instruction;
	logic MemWrite;
	logic [31:0] ALUResult, WriteData; 
	logic [31:0] ReadData;
	// instantiate device to be tested 
	ARMV4 dut(clk, reset, Instruction,ReadData, MemWrite, ALUResult, WriteData);
	// initialize test
	
	always 
		begin 
			reset <= 0;
			clk <= 1; 
			# 5;
			clk <= 0; 
			# 5;
		
		end
	initial
		begin
			reset <= 0;
			//ADD R0, R1, #42
			//313029282726252423222120191817161514131211109876543210
			//1 1 1 0 0 0 1 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0000101010
		   Instruction<= 32'b11100010100000010000000000101010;
		   ReadData   <= 0;
			# 10; 
			
			//ADD R1, R1, #5
			//11100010100000010001000000000101
		   Instruction<= 32'b11100010100000010001000000000101;
		   ReadData   <= 0;
			# 10; 
			
			//SUB R2, R0, #4
			//11100010010000000010000000000100
		   Instruction<= 32'b11100010010000000010000000000100;
		   ReadData   <= 0;
			# 10; 
			
			//SUB R3, R0, R1
			//11100000010000000011000000000001
		   Instruction<= 32'b11100000010000000011000000000001;
		   ReadData   <= 0;
			# 10; 
			//CMP R1, #41
			//11100011010100010000000000101001
			Instruction<= 32'b11100011010100010000000000101001;
		   ReadData   <= 0;
			# 10; 
		end
		



endmodule
