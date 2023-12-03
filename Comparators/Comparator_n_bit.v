`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2023 23:05:18
// Design Name: 
// Module Name: Comparator_n_bit
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


module Comparator_n_bit(greater,equal,lesser,a,b);
parameter n =8;//here you can give n value for how many bit do you need
output reg greater,equal,lesser;
input [n-1:0]a,b;
always @(*)
begin
if(a>b)
begin
equal = 1'b0;
lesser = 1'b0;
greater = 1'b1;
end
else if(a<b)
begin
equal = 1'b0;
lesser = 1'b1;
greater = 1'b0;
end
else
begin
equal = 1'b1;
lesser = 1'b0;
greater = 1'b0;
end
end
endmodule
