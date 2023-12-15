`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369A - Computer Architecture
// Laboratory 1 
// Module - PCAdder_tb.v
// Description - Test the 'PCAdder.v' module.
////////////////////////////////////////////////////////////////////////////////

module PCAdder_tb();

    reg [31:0] PCResult;

    wire [31:0] PCAddResult;

    PCAdder u0(
        .PCResult(PCResult), 
        .PCAddResult(PCAddResult)
    );

	initial begin
	
    	/* Please fill in the implementation here... */
		PCResult <= 32'h00000001; 
		#10;
        	PCResult <= 32'h00000002; 
		#10;
        	PCResult <= 32'h00000003; 
		#10;
        	PCResult <= 32'h00000004; 
		#10;
        	PCResult <= 32'h00000005; 
		#10;
	end
endmodule

