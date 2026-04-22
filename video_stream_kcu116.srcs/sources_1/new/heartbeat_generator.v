`timescale 1ns / 1ps
/* 
 * Copyright 2023, 2023-2025 Olympus Veran Technologies
 * Do not reproduce without written permission
 * All rights reserved
 * 
 * Created by David Bloem, P/N 417546
 */

module heartbeat_generator
    #(
      parameter P_MAX_COUNT  = 125_000_000,
      parameter P_COMPARATOR =  62_500_000
      )
    (
    input clk,
    output wire [$clog2(P_MAX_COUNT)-1:0] heartbeat_counter,
    output wire                         heartbeat
    );
    
    reg [$clog2(P_MAX_COUNT)-1:0] counter = 0;
    assign heartbeat = (counter < P_COMPARATOR);
    assign heartbeat_counter = counter;

    always @(posedge clk) begin
        if (counter == P_MAX_COUNT) begin
            counter <= #1 0; 
        end 
        else begin
            counter <= #1 counter + 1;
        end 
    end
    
endmodule