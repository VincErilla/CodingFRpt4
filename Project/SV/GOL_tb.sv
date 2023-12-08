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
          handle3 = $fopen("tb.out");
          #10000 $finish;
     end

      always @(negedge clk)
    begin
    $fdisplay(desc3, "\n\n\n %b \n %b \n %b \n %b \n %b \n %b \n %b \n %b \n %b \n %b \n %b \n %b \n %b \n %b \n %b \n %b", q[255:240], q[239:224], q[223:208], q[207:192], q[191:176], 
    q[175:160], q[159:144], q[143:128], q[127:112], q[111:96], q[95:80], q[79:64], q[63:48], q[47:32], q[31:16], q[15:0]);
    end
     

     initial 
     begin      
	#0   reset = 1'b1;
	#40  reset = 1'b0;	
     end






endmodule // stimulus