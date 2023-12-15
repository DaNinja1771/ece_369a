`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2022 04:48:18 PM
// Design Name: 
// Module Name: TopLevel
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

module TopLevel(Clk, Reset, out7, en_out);

  input Clk, Reset;
  
  wire [31:0] Instruction; 
  wire ClkOut;
  wire [31:0] PCResult;
  wire Clk;

  output [6:0] out7;
  output [7:0] en_out;
  
  ClkDiv Clk1(Clk, 1'b0, ClkOut);
  InstructionFetchUnit IFU1(Instruction, Reset, ClkOut, PCResult);
  Two4DigitDisplay T4DD1(Clk, Instruction[15:0], PCResult[15:0], out7, en_out); 

endmodule
