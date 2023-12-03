`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2023 00:08:57
// Design Name: 
// Module Name: Identity_comparator
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


module Identity_comparator #(parameter n =16)(output reg equal,input [n-1:0]a,b);
always @(*)
begin
if(a==b)
equal = 1'b1;
else
equal = 1'b0;
end
endmodule
