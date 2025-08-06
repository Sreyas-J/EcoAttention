module fp16tb;
    
    parameter EXP_SIZE = 8;
    parameter SIGN_SIZE = 1; 
    parameter MANTISSA_SIZE = 7;

    reg [EXP_SIZE+SIGN_SIZE+MANTISSA_SIZE-1:0] a,b;
    wire [EXP_SIZE+SIGN_SIZE+MANTISSA_SIZE-1:0]sum;
    // wire [MANTISSA_SIZE+1:0] sum_mantissa_in[0:MANTISSA_SIZE+1];


    fp16adder dut1(.a(a),.b(b),.sum(sum));
    // ,.sum_zero(sum_zero),.overflow(overflow)
    // sum_zero=%b overflow=%b
    // ,sum_zero,overflow

    initial begin
        $monitor("a=%h, b=%h, out=%h",a,b,sum);
    end

    initial begin
        $dumpfile("waves.vcd");
        $dumpvars(0, dut1);

    end

    initial
    begin
        
        a=16'h4140; b=16'h3f80;

    end

endmodule
