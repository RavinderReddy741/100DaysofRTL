`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2023 14:40:41
// Design Name: 
// Module Name: Comparator_gates_tb
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


module Comparator_gates_tb();
wire greater,equal,lesser;
reg a,b;
integer i;
Comparatot_using_gates dut(greater,equal,lesser,a,b);
initial
begin
$monitor("a = %0b,b = %0b ,a_is_greater %0b,both_are_equal=%0b,a_is_lesser=%0b ",a,b,greater,equal,lesser);
for(i =0;i<=3;i=i+1)
begin
{a,b} = i;
#100;

end
end
endmodule
