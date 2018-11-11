module tb_decoder();
	logic clk;
	logic [1:0] Op;
	logic [5:0] funct;
	logic [3:0] Rd;
	logic[1:0] FlagW;
	logic PCS,RegW,MemW,NoWrite,MemtoReg,ALUSrc;
	logic [1:0] immSrc,RegSrc;
	logic [3:0]ALUControl;
	// instantiate device to be tested 
	decoder dut(Op, funct,
					  Rd,FlagW,PCS,
					  RegW,MemW,NoWrite,
					  MemtoReg,ALUSrc,immSrc,
					  RegSrc,ALUControl);
	// initialize test
	initial begin
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
			Op      =  2'b00;
			funct   =  6'b101000;
			Rd      =  4'b0000;
			# 10;
			//CMP R1, R2
			//11100001010100010000000000000010
			Op      =  2'b00;
			funct   =  6'b010101;
			Rd      =  4'b0000;
			# 10;	
			//SUB R2, R3, #0xFF0
			//11100010010000110010111011111111
			Op      =  2'b01;
			funct   =  6'b000000;
			Rd      =  4'b0000;
			//SUB R2, R3, #0xFF0
			//11100010010000110010111011111111
			Op      =  2'b01;
			funct   =  6'b100000;
			Rd      =  4'b0000;
			# 10;
			//SUB R2, R3, #0xFF0
			//11100010010000110010111011111111
			Op      =  2'b10;
			funct   =  6'b000000;
			Rd      =  4'b0000;
			# 10;	
			//SUB R2, R3, #0xFF0
			//11100010010000110010111011111111
			Op      =  2'b11;
			funct   =  6'b000000;
			Rd      =  4'b0000;
			# 10;
		end


endmodule


