`timescale 1ns/1ps
module stimulus;

   logic [255:0] grid;
   logic 	 clk;
   logic reset;
   logic [255:0] grid_evolve

     
   assign grid = 64'h0412_6424_0034_3C28;
  
   DES New_Datapath(.grid(grid), .grid_evolve(grid_evolve), .reset(reset),.outputY(outputX) .clk(clk));


   // 1 ns clock
   initial 
     begin	
	clk = 1'b1;
	forever #5 clk = ~clk;
     end



endmodule // stimulus