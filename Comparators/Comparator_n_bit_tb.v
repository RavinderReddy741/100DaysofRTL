`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2023 23:20:43
// Design Name: 
// Module Name: Comparator_n_bit_tb
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


module Comparator_n_bit_tb();
parameter p = 8;
reg [p-1:0]a,b;
wire equal,greater,lesser;
Comparator_n_bit DUT(greater,equal,lesser,a,b);
initial
begin
a = 8'b10100101;
b = 8'b00101010;
#10;
a = 8'b11100101;
b = 8'b11101010;
#10;
a = 8'b00000000;
b = 8'b11111111;
#10;
a = 8'b11111111;
b = 8'b11111111;
#10;
a = 8'b11111101;
b = 8'b00101010;
#10;
a = 8'b11111101;
b = 8'b11111110;
#10;
a = 8'b10100101;
b = 8'b00101010;
#10;
$finish;
end
endmodule
