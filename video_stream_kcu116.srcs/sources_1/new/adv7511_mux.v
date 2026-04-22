`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Olympus Surgical Technologies Americas
// Engineer: Jordan Deitsch
// 
// Create Date: 04/01/2026 08:50:15 AM
// Design Name: 
// Module Name: adv7511_yuv422_mux
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: separate incoming YUV 4:2:2 data stream (24-bit video data) into 
//              8-bit data buses formatted for the KCU116 dev board and ADV7511 
//              HDMI driver chip
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module adv7511_mux(
    input           clk,
    input           rst_n,
    input           swap_in,
    input           data_valid,
    input           hsync_in,
    input           vsync_in,
    input [23:0]    data_in,
    output          de_out,
    output [7:0]    y_out,
    output [7:0]    uv_out,
    output          hsync_out,
    output          vsync_out
    );
    
    reg [7:0]   y_out_buff;
    reg [7:0]   uv_out_buff;
    
    reg [23:0]   data_buff_a;
    reg [23:0]   data_buff_b;
    
    reg [1:0]   de_buff;
    reg [1:0]   hsync_buff;
    reg [1:0]   vsync_buff;
    
    reg         pixel_a;
    
    assign de_out = de_buff[1];
    assign hsync_out = hsync_buff[1];
    assign vsync_out = vsync_buff[1];
    
    assign y_out = y_out_buff;
    assign uv_out = uv_out_buff;
    
    // Buffer DE, Hsync, and Vsync by one clock cycle
    always @(posedge clk) begin
        if (rst_n == 1'b0) begin
            de_buff <= 0;
            hsync_buff <= 0;
            vsync_buff <= 0;
        end
        else begin
            de_buff[0] <= data_valid;
            de_buff[1] <= de_buff[0];
            
            hsync_buff[0] <= hsync_in;
            hsync_buff[1] <= hsync_buff[0];
            
            vsync_buff[0] <= vsync_in;
            vsync_buff[1] <= vsync_buff[0];
        end
    end
    
    always @(posedge clk) begin
        if (rst_n == 1'b0) begin
            data_buff_a <= 0;
            data_buff_b <= 0;
            y_out_buff <= 0;
            uv_out_buff <= 0;
            pixel_a <= 0;
        end
        else begin
            if ((data_valid == 1'b0) && (de_buff == 2'b00)) begin
                data_buff_a <= 0;
                data_buff_b <= 0;
                y_out_buff <= 0;
                uv_out_buff <= 0;
                pixel_a <= 0;
            end
            else begin
                
                data_buff_a <= data_in;
                data_buff_b <= data_buff_a;
                pixel_a <= ~pixel_a;
                
                if(pixel_a == 1'b0) begin
                    y_out_buff <= swap_in ? data_buff_b[7:0] : data_buff_a[7:0];
                    uv_out_buff <= swap_in ? data_buff_b[15:8] : data_buff_a[15:8];
                end
                else begin
                    y_out_buff <= swap_in ? data_in[7:0] : data_buff_a[7:0];
                    uv_out_buff <= swap_in ? data_in[15:8] : data_buff_a[15:8];
                end               
            end
        end
    end
    
endmodule
