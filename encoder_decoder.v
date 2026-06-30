module encoder(
    input [7:0] D,
    output reg [2:0] Y
);

always @(*)
begin
    case(D)
        8'b00000001: Y=3'b000;
        8'b00000010: Y=3'b001;
        8'b00000100: Y=3'b010;
        8'b00001000: Y=3'b011;
        8'b00010000: Y=3'b100;
        8'b00100000: Y=3'b101;
        8'b01000000: Y=3'b110;
        8'b10000000: Y=3'b111;
        default: Y=3'b000;
    endcase
end

endmodule


module decoder(
    input [2:0] A,
    output reg [7:0] Y
);

always @(*)
begin
    case(A)
        3'b000: Y=8'b00000001;
        3'b001: Y=8'b00000010;
        3'b010: Y=8'b00000100;
        3'b011: Y=8'b00001000;
        3'b100: Y=8'b00010000;
        3'b101: Y=8'b00100000;
        3'b110: Y=8'b01000000;
        3'b111: Y=8'b10000000;
    endcase
end

endmodule
