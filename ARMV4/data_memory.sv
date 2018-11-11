module data_memory(input logic clk,WE,
						 input logic [31:0] A,WD,
						 output logic [31:0] RD);
	logic [31:0] ram[31:0];
	initial 
		$readmemh("raam.mem",ram);
	always_ff@(posedge clk)
		if(WE)
			ram[A[31:2]] <= WD;
		else
			RD <= ram[A[31:2]];
endmodule
