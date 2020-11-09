module adder (clk , input_data_1, input_data_2, output_data);
    input clk;
   
	input [63 : 0] input_data_1, input_data_2;
	output reg [63 : 0] output_data;

     always @(input_data_1) 
        output_data = input_data_1 + input_data_2;
    
endmodule