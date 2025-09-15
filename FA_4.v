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

module FA_4(a, b, cin, s, cout);
//ripple
input [3:0] a, b;
input cin;
output [3:0] s;
output cout;

wire cout0, cout1, cout2;

//port mapping
FA fa0(.a(a[0]), .b(b[0]), .cin(cin), .s(s[0]), .cout(cout0));
FA fa1(.a(a[1]), .b(b[1]), .cin(cout0), .s(s[1]), .cout(cout1));
FA fa2(.a(a[2]), .b(b[2]), .cin(cout1), .s(s[2]), .cout(cout2));
FA fa3(.a(a[3]), .b(b[3]), .cin(cout2), .s(s[3]), .cout(cout));

endmodule
-----------------------------------------------------------------------------------
module FA_4_tb;

reg [3:0] a, b;
reg cin;
wire [3:0] s;
wire cout;

FA_4 uut(.a(a), .b(b), .cin(cin), .s(s), .cout(cout));

integer i, j;

initial begin
for(i = 0; i < 16; i = i + 1)begin
    for(j = 0; j < 16; j = 1 + j)begin
        a = i; b = j; cin = 1'b0;
        #10;
     end
end
$stop;
end
endmodule
