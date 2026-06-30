`timescale 1ns/1ps

module encoder_decoder_tb;

reg [7:0] D;
reg [2:0] A;

wire [2:0] Y_enc;
wire [7:0] Y_dec;

encoder E1(
.D(D),
.Y(Y_enc)
);

decoder D1(
.A(A),
.Y(Y_dec)
);

initial
begin

$display("Encoder:");

D=8'b00001000;
#10;
$display("Input=%b Output=%b",D,Y_enc);

D=8'b00100000;
#10;
$display("Input=%b Output=%b",D,Y_enc);


$display("Decoder:");

A=3'b010;
#10;
$display("Input=%b Output=%b",A,Y_dec);

A=3'b111;
#10;
$display("Input=%b Output=%b",A,Y_dec);

$finish;

end

endmodule
