`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2023 00:16:51
// Design Name: 
// Module Name: Identity_Comparator_tb
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


module Identity_Comparator_tb();
parameter n=16;
reg [n-1:0]a,b;
wire equal;
Identity_comparator dut(equal,a,b);
initial
begin
$monitor("a=%0b,b = %0b,equal = %0b ",a,b,equal);
a=16'd1234;
b=16'd1234;
#10;
a=16'd1231;
b=16'd1211;
#10;
a=16'd1234;
b=16'd1114;
#10;
a=16'd1111;
b=16'd1111;
#10;
a=16'd1214;
b=16'd1234;
#10;
a=16'd1211;
b=16'd1211;
#10;
$finish;
end
endmodule
