`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2026 12:36:05 PM
// Design Name: 
// Module Name: input_sync
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


module input_sync(
    input clk,
    input async_in,
    output sync_out
    );
    
    reg [1:0]sync_buff;
    assign sync_out = sync_buff[1];
    
    always @(posedge clk) begin
        sync_buff[0] <= async_in;
        sync_buff[1] <= sync_buff[0];
    end
    
endmodule
