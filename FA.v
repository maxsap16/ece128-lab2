`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2025 01:45:51 PM
// Design Name: 
// Module Name: Mux_8_1
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

module FA(a, b, cin, s, cout);

input a, b, cin;
output s, cout;

assign s = (a^b)^cin;
assign cout = (a & b) | ((a^b) & (cin));

endmodule

-------------------------------------------------------------------------------------------------
module FA_tb;
reg a, b, cin;
wire s, cout;

FA uut(.a(a), .b(b), .cin(cin), .s(s), .cout(cout));

    integer i;

initial begin
    for(i = 0; i <= 8; i = i + 1)
        #10 {a, b, cin} = i; 
    $stop;
end

endmodule