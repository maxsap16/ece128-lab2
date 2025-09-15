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
module FA_4_C(a, b, cin, s, cout);

input [3:0] a, b; 
input cin;
output [3:0] s;
output cout;

wire cout0, cout1, cout2;

wire p0, p1, p2, p3;
wire g0, g1, g2, g3;

assign p0 = a[0]^b[0];
assign p1 = a[1]^b[1];
assign p2 = a[2]^b[2];
assign p3 = a[3]^b[3];

assign g0 = a[0]&b[0];
assign g1 = a[1]&b[1];
assign g2 = a[2]&b[2];
assign g3 = a[3]&b[3];

assign cout0 = g0 | (p0&cin);
assign cout1 = g1 | (p1&cout0);
assign cout2 = g2 | (p2&cout1);
assign cout = g3 | (p3&cout2);

//port mapping
FA fa0(.a(a[0]), .b(b[0]), .cin(cin), .s(s[0]));
FA fa1(.a(a[1]), .b(b[1]), .cin(cout0), .s(s[1]));
FA fa2(.a(a[2]), .b(b[2]), .cin(cout1), .s(s[2]));
FA fa3(.a(a[3]), .b(b[3]), .cin(cout2), .s(s[3]));

endmodule
----------------------------------------------------------------------------------------------------------
module FA_4_C_tb;

reg [3:0] a, b;
reg cin;
wire [3:0] s;
wire cout;

FA_4_C uut(.a(a), .b(b), .cin(cin), .s(s), .cout(cout));

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
