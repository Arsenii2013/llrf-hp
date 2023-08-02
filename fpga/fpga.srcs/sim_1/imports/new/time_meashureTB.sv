`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2023 10:41:49 AM
// Design Name: 
// Module Name: time_meashureTB
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

`include "axi_if.svh"

module time_meashureTB(

    );
    logic clk;
    logic aresetn;
    axi_if #(.AW(4), .DW(32)) axi_GP0_inst();
    
    time_meashure # ( 
		.DW(32),
		.AW(4)
	) time_meashure_inst (
		clk,
		aresetn,
		axi_GP0_inst.s_lite
	);
	
	always 
        #5  clk <=  ! clk;    
	
	initial begin
	   #1
	   clk     <= 0;
	   aresetn <= 0;
	   #10
	   aresetn <= 1;
	end
    
endmodule
