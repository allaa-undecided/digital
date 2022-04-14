`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2022 01:54:16 PM
// Design Name: 
// Module Name: count
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

module count(
    seg,button
    );
     
     //Declare inputs,outputs and internal variables.
     //input [3:0] bcd;
     input button;
     reg x;
     output reg [6:0] seg;
//always block for converting bcd digit into 7 segment format
    always @(button)
    begin
       x = x + 1;
        case (x) //case statement
                    0 : seg = 7'b1000000;
                    1 : seg = 7'b1111001;
                    2 : seg = 7'b0100100;
                    3 : seg = 7'b0110000;
                    4 : seg = 7'b0011001;
                    5 : seg = 7'b0010010;
                    6 : seg = 7'b0000010;
                    7 : seg = 7'b1111000;
                    8 : seg = 7'b0000000;
                    9 : seg = 7'b0010000;
                    
                    //switch off 7 segment character when the bcd digit is not a decimal number.
                    default : seg = 7'b1111111; 
                endcase
    end
    
endmodule
