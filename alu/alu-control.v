module aluControl(aluOp0, aluOp1, instruction_part, operation_code);
    input aluOp0, aluOp1;
    input [9:0] instruction_part;
    output reg [3:0] operation_code;

    wire [1:0]N aluOp = {aluOp1, aluOp0};

    always @ (aluOp0, aluOp1, instruction_part) begin
        casex(aluOp)
            2'b00: operation_code = 4'b0010;
            2'bx1: operation_code = 4'b0110;
            2'b1x: begin
                case(instruction_part)
                    10'b00000000000: operation_code = 4'b0010;
                    10'b01000000000: operation_code = 4'b0110;
                    10'b00000000111: operation_code = 4'b0000;
                    10'b00000000110: operation_code = 4'b0001;
                    default: operation_code = 4'bz;
                
                endcase
            end
            default: operation_code = 4'bz;

        endcase

    end

endmodule