`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/16/2023 11:08:15 PM
// Design Name: 
// Module Name: Top_Module
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


module Top_Module(
    input [4:0] sw, //sw[3]-sw[0] are window and door sensors, sw[4] is power to activate system
    output Alarm,
    output [3:0] an,
    output [0:6] seg
    );
    //powering on right most seven segment display only
    assign an = 4'b1110;
    
    //setting 0 and A to be displayed on the system which is based on sw[4]-- the power switch
    wire [3:0] act;
    assign act = {sw[4], 1'b0, sw[4], 1'b0};  //0000 for 0 if sw[4] is set to 0 and 1010 for A is sw[4] is set to 1
    
    //instantiating the two modules we created earlier
    Seven_Segment S1(act, seg, an);//here act are four wires going into 7 segment secoder
    Home_Alarm_System(sw[3:0], sw[4], Alarm); //here sw[3:0] are sensors and sw[4] is power switch for alarm
        
endmodule
