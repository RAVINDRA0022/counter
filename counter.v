`timescale 1ns / 1ps


module counter(input clk,
               input reset,
               output reg [3:0]q);
         always @ (posedge clk or posedge reset)
               begin 
               if(reset)
               begin
               q <= 4'b0000;
               end
               else if (q == 4'b1111)
               begin 
               q <= 4'b1111;
               end
               else 
               begin
               q <= q + 1 ;
               end
         end
endmodule