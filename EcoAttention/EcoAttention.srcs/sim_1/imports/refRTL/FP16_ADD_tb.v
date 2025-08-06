`timescale 1ns/1ps

module fp16tb;
    
    parameter EXP_SIZE = 8;
    parameter SIGN_SIZE = 1; 
    parameter MANTISSA_SIZE = 7;

    reg [EXP_SIZE+SIGN_SIZE+MANTISSA_SIZE-1:0] A,B;
    reg clk;
    wire [EXP_SIZE+SIGN_SIZE+MANTISSA_SIZE-1:0]SUM;
    // wire [MANTISSA_SIZE+1:0] sum_mantissa_in[0:MANTISSA_SIZE+1];


    fp16adder dut1(.clk(clk),.A(A),.B(B),.SUM(SUM));
    // ,.sum_zero(sum_zero),.overflow(overflow)
    // sum_zero=%b overflow=%b
    // ,sum_zero,overflow

//    initial begin
//        $monitor("a=%h, b=%h, out=%h",a,b,sum);
//    end

//    initial begin
//        $dumpfile("waves.vcd");
//        $dumpvars(0, dut1);

//    end

    always begin
        #5 clk=~clk;
    end

    initial
    begin
        clk=1'b0;
        A=16'b0100000101000000;  B=16'b0011111110000000;
    end

endmodule
