`timescale 1ns/1ps
module stimulus;

   logic [63:0] grid;
   logic vector1, vector2, vector3, vector4, vector5, vector6, vector7, vector8;
   logic 	 clk;
  
     
   
  

   DES datapath(grid);

   // 1 ns clock
   initial 
     begin	
	clk = 1'b1;
	forever #5 clk = ~clk;
     end



endmodule // stimulus