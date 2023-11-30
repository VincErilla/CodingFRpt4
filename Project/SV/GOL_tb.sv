`timescale 1ns/1ps
module stimulus;

   logic [63:0] grid;
   logic vector1, vector2, vector3, vector4, vector5, vector6, vector7, vector8;
   logic 	 clk;
   logic en;
   logic reset;
   logic [63:0] grid_evolve

     
   assign grid = 64'h0412_6424_0034_3C28;
  

   DES datapath(grid, grid_evolve);
   DES FSM(clk, reset);
   DES New_Datapath(grid, grid_evolve, reset, outputY);


   // 1 ns clock
   initial 
     begin	
	clk = 1'b1;
	forever #5 clk = ~clk;
     end



endmodule // stimulus