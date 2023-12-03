`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2023 14:32:22
// Design Name: 
// Module Name: Comparatot_using_gates
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


module Comparatot_using_gates(output greater,equal,lesser,input a,b);
and(greater,a,~b);
xnor(equal,a,b);
and(lesser,~a,b);
endmodule
