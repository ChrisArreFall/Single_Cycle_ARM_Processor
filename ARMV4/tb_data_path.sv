module tb_data_path();
	logic clk, reset;
	logic [1:0] RegSrc;
	logic RegWrite;
	logic [1:0] ImmSrc;
	logic ALUSrc;
	logic [3:0] ALUControl;
	logic MemtoReg;
	logic PCSrc;
	logic [31:0] Instruction;
	logic [31:0] ReadData;
	logic [3:0] ALUFlags;
	logic [31:0] PC_out;
	logic [31:0] ALUResult, WriteData;
	// instantiate device to be tested 
	data_path dut(clk, reset, 
				 RegSrc, 
				 RegWrite, 
				 ImmSrc, 
				 ALUSrc, 
				 ALUControl, 
				 MemtoReg, 
				 PCSrc, 
				 Instruction,
				 ReadData, 
				 ALUFlags, 
				 PC_out, 
				 ALUResult, WriteData);
	// initialize test
	initial begin
		reset = 0;
		clk <= 0;
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
			//ADD R0, R1, #42
			//313029282726252423222120191817161514131211109876543210
			//1 1 1 0 0 0 1 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0000101010
			RegSrc     <= 0;
			RegWrite   <= 2'b1;
			ImmSrc     <= 0;
		   ALUSrc     <= 1'b1;
		   ALUControl <= 0;
		   MemtoReg   <= 0;
		   PCSrc      <= 0;
		   Instruction<= 32'b11100010100000010000000000101010;
		   ReadData   <= 0;
			# 10; 
			/*
			//SUB R2, R3, #0
			//11100010010000110010000000000000
			RegSrc     <= 0;
			RegWrite   <= 2'b1;
			ImmSrc     <= 0;
		   ALUSrc     <= 2'b1;
		   ALUControl <= 2'b1;
		   MemtoReg   <= 0;
		   PCSrc      <= 0;
		   Instruction<= 32'b11100010010000110010000000000000;
		   ReadData   <= 0;
			# 10; 
			/*
			RegSrc     = 0;
			RegWrite   = 0;
			ImmSrc     = 0;
		   ALUSrc     = 0;
		   ALUControl = 0;
		   MemtoReg   = 0;
		   PCSrc      = 0;
		   Instruction= 0;
		   ReadData   = 0;
			# 10; 
			//
			RegSrc     = 0;
			RegWrite   = 0;
			ImmSrc     = 0;
		   ALUSrc     = 0;
		   ALUControl = 0;
		   MemtoReg   = 0;
		   PCSrc      = 0;
		   Instruction= 0;
		   ReadData   = 0;
			# 10; 
			//
			RegSrc     = 0;
			RegWrite   = 0;
			ImmSrc     = 0;
		   ALUSrc     = 0;
		   ALUControl = 0;
		   MemtoReg   = 0;
		   PCSrc      = 0;
		   Instruction= 0;
		   ReadData   = 0;
			# 10; 
			//
			RegSrc     = 0;
			RegWrite   = 0;
			ImmSrc     = 0;
		   ALUSrc     = 0;
		   ALUControl = 0;
		   MemtoReg   = 0;
		   PCSrc      = 0;
		   Instruction= 0;
		   ReadData   = 0;
			*/
		end




endmodule
