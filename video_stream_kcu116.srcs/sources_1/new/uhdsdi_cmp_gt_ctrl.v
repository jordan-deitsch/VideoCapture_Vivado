`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2026 10:34:55 AM
// Design Name: 
// Module Name: uhdsdi_cmp_gt_ctrl
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


module uhdsdi_cmp_gt_ctrl
(
    input  wire         s_axi_aclk, 
    output wire [63:0]  cmp_gt_ctrl
);

always @(posedge s_axi_aclk) begin
    // Clocked logic if needed
end

assign cmp_gt_ctrl[0] = 1'b0; //qpll0reset
assign cmp_gt_ctrl[1] = 1'b0; //qpll0pd 
assign cmp_gt_ctrl[2] = 1'b0; //qpll1reset
assign cmp_gt_ctrl[3] = 1'b0; //qpll1pd 
assign cmp_gt_ctrl[6:4] = 3'b000; //qpll0refclksel; 
assign cmp_gt_ctrl[7] = 1'b0; //qpll0refclksel_valid; 
assign cmp_gt_ctrl[10:8] = 3'b000; //qpll1refclksel
assign cmp_gt_ctrl[11] = 1'b0; //qpll1refclksel_valid
assign cmp_gt_ctrl[12] = 1'b0; //cpllreset
assign cmp_gt_ctrl[13] = 1'b0; //cpllpd
assign cmp_gt_ctrl[14] = 1'b1; //txclk_ready
assign cmp_gt_ctrl[15] = 1'b0; //rxclk_ready
assign cmp_gt_ctrl[18:16] = 3'b000; //cpll0 ref clk sel
assign cmp_gt_ctrl[19] = 1'b0; //cpllrefclksel0_valid
assign cmp_gt_ctrl[22:20] = 3'b000; //gt_loopback
assign cmp_gt_ctrl[63:23] = 0; 


endmodule
