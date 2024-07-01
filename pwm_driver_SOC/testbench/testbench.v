`timescale 1ns / 1ps

module testbench();


    reg clk=0;
    reg reset_n;
    reg chipselect;
    reg [1:0] address;
    reg write;
    reg [31:0] writedata;
    reg read;
    reg [3:0] byteenable;
    wire [31:0] readdata;
    wire PWM_out;
   
    PWM_m pwm (
        .clk(clk),
        .reset_n(reset_n),
        .chipselect(chipselect),
        .address(address),
        .write(write),
        .writedata(writedata),
        .read(read),
        .byteenable(byteenable),
        .readdata(readdata),
        .PWM_out(PWM_out)
    );

    // Clock generation
    always begin
        #5 clk = ~clk;
    end

    // Reset
    initial begin
        reset_n = 0;
        #10;
        reset_n = 1;
    end

    // Write and read tests
    initial begin
        // Write to clock_divide_reg
        chipselect = 1;
        address = 2'b00;
        write = 1;
        byteenable = 4'b1111;
        writedata = 32'hFF; // Example value
        #20;
        write = 0;

        // Read from clock_divide_reg
        read = 1;
        #20;
        read = 0;

        // Write to duty_cycle_reg
        address = 2'b01;
        write = 1;
        byteenable = 4'b1111;
        writedata = 32'hAA; // Example value
        #20;
        write = 0;

        // Read from duty_cycle_reg
        read = 1;
        #20;
        read = 0;

        // Write to control_reg
        address = 2'b10;
        write = 1;
        byteenable = 4'b1111;
        writedata = 1'b1; // Example value
        #20;
        write = 0;

        // Read from control_reg
        read = 1;
        #20;
        read = 0;

        // End simulation
        #10;
        $finish;
    end

endmodule