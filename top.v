module top(input clk,din,output dout);



wire clk_buf/*synthesis keep*/;

wire clk_buf2/*synthesis keep*/;

assign clk_buf = clk;

assign clk_buf2 = clk_buf;

reg din_ff,din_ff2;



always@(posedge clk_buf)

   din_ff  <= din;



always@(posedge clk_buf2)

   din_ff2 <= din_ff;



assign dout = din_ff2;


endmodule

