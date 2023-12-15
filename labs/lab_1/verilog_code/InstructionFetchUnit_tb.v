`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2022 11:23:46 AM
// Design Name: 
// Module Name: InstructionFetchUnit_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module InstructionFetchUnit_tb();
    reg Reset;
    reg Clk;
    wire [31:0]Instruction;
    wire [31:0] PCResult;
    InstructionFetchUnit I0(
        .Instruction(Instruction),
        .Reset(Reset), 
        .Clk(Clk),
        .PCResult(PCResult)
        );
    initial begin
            Clk <= 1'b0;
            forever #10 Clk <= ~Clk;
        end
        
    initial begin

            Reset <= 1'b1;
            #20;
            Reset <= 1'b0;
            #20;
            #20;
            Reset <= 1'b1;
            #25;
            Reset <= 1'b0;
            #20;
            Reset <=1'b1;
            #20;
            Reset <=1'b0;
             
        end

endmodule
