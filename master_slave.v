`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2023 18:05:27
// Design Name: 
// Module Name: master_slave
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


module jk_flipflop(
    input j,
    input k,
    input clk,
    output reg q,
    output  qbar
    );
    assign qbar=~q;
    always@(posedge clk)
    begin
    case({j,k})
    2'b00:q<=q;
    2'b01:q<=0;
    2'b10:q<=1;
    2'b11:q<=~q;
    endcase
    end
endmodule

module master_slave(input jj,kk,clk,output reg qq,qqbar);
wire q,qbar,negclk;
jk_flipflop master(jj,kk,clk,q,qbar);
assign negclk=~clk;
jk_flipflop slave(q,qbar,negclk,qq,qqbar);
endmodule






