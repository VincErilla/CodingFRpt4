`timescale 1ns/1ps
module stimulus;

   logic [255:0] grid;
   logic 	 clk;
   logic reset;
   logic [255:0] q;

   integer handle3;
   integer desc3;

     
   assign grid = 256'h4c18fdf18c1a304a7f7899c27941052fb871c9e227bc05a9b895448b6d653a1b;
  
   New_Datapath dut (.grid(grid), .reset(reset), .clk(clk), .q(q));


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
     desc3 = handle3;
    $fdisplay(desc3, "\n\n\n %b \n %b \n %b \n %b \n %b \n %b \n %b \n %b \n %b \n %b \n %b \n %b \n %b \n %b \n %b \n %b", q[255:240], q[239:224], q[223:208], q[207:192], q[191:176], 
    q[175:160], q[159:144], q[143:128], q[127:112], q[111:96], q[95:80], q[79:64], q[63:48], q[47:32], q[31:16], q[15:0]);
    end
     

     initial 
     begin      
	#0   reset = 1'b1;
	#40  reset = 1'b0;	
     end






endmodule // stimulus