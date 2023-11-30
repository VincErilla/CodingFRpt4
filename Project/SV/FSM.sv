

module FSM (clk, reset);
   input logic clk
   input logic reset;
   input logic en;

flopenr #(64)f1 (clk, reset, en);

typedef enum 	[2.0] logic {S0, S1, S2} statetype;
   statetype state, nextstate;
always_ff @(posedge clk, posedge reset)
     if (reset) state <= S0;
     else state <= next_state;
     
     always_comb
     case (state)
       S0: begin
          en = 1;
          if (reset) next_state <= S0;
          else (en) next_state <= S1;
       end
       S1: begin
         en = 1;
         if (reset) next_state <= S0;
         else next_state <= S2;
       end
       S2: begin
        en = 0;
        if (reset) next_state <= S0;
        else if (en) next_state <= S1;
        else next_state <= S2;
       end
     endcase



endmodule
