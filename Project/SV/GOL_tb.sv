`timescale 1ns/1ps
module stimulus;

   logic [255:0] grid;
   logic 	 clk;
   logic reset;
   logic [255:0] grid_evolve

   integer handle3;
   integer desc3;

     
   assign grid = 256'ha5eeea1ffb2fce85175e00c7221b339c2d29e0cdc746404c7ab7706a203039949a0caab6f2e93c321957b69d6111922a7ad03c76194c1e394cbaf247eb1ed3f1c490371af789211693dc3613dba054e43605e32b5fbcd374189b41b296a0b4d1eabb28a24a7cbc7e68b643100ea290d38cc504e38f5c99f6caedfe8880eb5ad1;
  
   DES New_Datapath(.grid(grid), .reset(reset), .clk(clk), .q(q));


   // 1 ns clock
   initial 
     begin	
	clk = 1'b1;
	forever #5 clk = ~clk;
     end

     initial
     begin
          handle3 = $fopen("fsm.out");
          #500 $finish;
     end

      always 
     begin
	desc3 = handle3;
	#5 $fdisplay(desc3, "%b | L = %b R = %b H = %b || %b%b%b %b%b%b", 
		     reset, q);
     end   

     initial 
     begin      
	#0   reset = 1'b1;
	#41  reset = 1'b0;	
	#0   q = 1'b0;
	#40  q = 1'b1;
	#40  q = 1'b0;

     end






endmodule // stimulus