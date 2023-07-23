`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/16/2023 10:38:34 PM
// Design Name: 
// Module Name: Home_Alarm_System
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


module Home_Alarm_System(
    input [3:0] sw,
    input m,
    output a
    );
    assign a = ( ( sw[0] | sw[1] | sw[2] ) & sw[3]) & m;
    
endmodule
