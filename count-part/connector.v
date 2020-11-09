module connector( clk );

wire clk;
wire [63:0] pcout;
wire [63:0] pcOld = 64'b0;
integer write=1,reset=0;

adder adder1(.clk(clk),.input_data_1(pcOld),.input_data_2(64'b100),.output_data(pcOld));

pc pc1(.clk(clk), .data_input(pcOld) , .pcout(pcout) , .reset(reset) ,.write(write));


endmodule;