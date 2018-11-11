module tb_ARM_RAM_INS();
	logic clk, reset;
	logic [31:0] WriteData, DataAdr; 
	logic MemWrite;
	// instantiate device to be tested 
	ARM_RAM_INS dut(clk, reset, WriteData, DataAdr, MemWrite);
	// initialize test
	
	always 
		begin 
			clk <= 1; 
			# 5;
			clk <= 0; 
			# 5;
		end
	initial
		begin
			reset <= 1;
			#10
			reset <= 0;
		
		end
		



endmodule
