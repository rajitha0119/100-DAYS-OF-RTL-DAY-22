`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2023 18:11:24
// Design Name: 
// Module Name: master_slave_tb
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


module master_slave_tb(

    );
    /*reg clk;
    reg j;
    reg k;
    wire q;
    wire qbar;
 jk_flipflop uut(.clk(clk),.j(j),.k(k),.q(q),.qbar(qbar));
 initial begin
 clk=0;j=0;k=0;
 #80 clk=1;j=0;k=0;
 #80 clk=0;j=0;k=1;
 #80 clk=1;j=0;k=1;
 #80 clk=0;j=1;k=0;
 #80 clk=1;j=1;k=0;
 #80 clk=0;j=1;k=1;
 #80 clk=1;j=1;k=1;
 end*/
 reg jj,kk,clk;
 wire qq,qqbar;
 
 master_slave uut(jj,kk,clk,qq,qqbar);
 initial
 begin
 clk=0;
 forever #10 clk=~clk;
 end
 initial
 begin
 $monitor("clk=%b,jj=%b,kk=%b,qq=%b,qqbar=%b",clk,jj,kk,qq,qqbar,$time);
 jj=0;kk=0;
 #5 jj=0;kk=1;
 #5 jj=1;kk=0;
 #5 jj=1;kk=1;
 end
 initial
 begin
 $dumpfile("dump.vcd");
 $dumpvars;
 #50 $finish();
 end
endmodule
