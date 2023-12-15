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

module TopLevel_tb();

  reg Clk;
  reg Reset;
  wire [6:0] out7;
  wire [7:0] en_out;
  
  TopLevel UUT (
    .Clk(Clk),
    .Reset(Reset),
    .out7(out7),
    .en_out(en_out)
  );



  initial begin
            Clk <= 1'b0;
            forever #10 Clk <= ~Clk;
        end
        
  initial begin
    Reset <= 1'b0;
  end
        
    

endmodule
