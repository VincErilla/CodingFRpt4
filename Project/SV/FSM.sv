

module FSM (clk, reset, en, rst);
   input logic clk;
   input logic reset;
   output logic en;
   output logic rst;

typedef enum logic [2:0]  {S0, S1, S2} statetype;
   statetype state, nextstate;
always_ff @(posedge clk, posedge reset)
     if (reset) state <= S0;
     else state <= nextstate;
     
     always_comb
     case (state)
       S0: begin
         rst = 1'b1;
          en = 1'b0;
          if (reset) nextstate <= S0;
          else if (en) nextstate <= S1;
       end
       S1: begin
         rst = 1'b0;
         en = 1'b1;
         if (reset) nextstate <= S0;
         else if (en == 1'b0) nextstate <= S2;
       end
       S2: begin
         rst = 1'b0;
        en = 1'b0;
        if (reset) nextstate <= S0;
        else if (en) nextstate <= S1;
        else nextstate <= S2;
       end
     endcase



endmodule
