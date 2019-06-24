`timescale 1ns/10ps
module tb_sbox;
    reg[7:0] datain;
    wire[7:0] result;
    wire[7:0] result_ref;
    reg clk,
        rst_n;

    SM4 uut(.b(datain), .Sb(result));
    sbox_ref uut2(.data_in(datain), .result_out(result_ref));
    always #5 clk = ~clk;
    always@(posedge clk) begin
        if (!rst_n)
            datain <= 'd0;
        else
            datain <= datain + 1;
    end

    initial begin
        clk = 0;
        rst_n = 0;
        #100;
        rst_n = 1;
        wait(datain == 8'hff);
        @(posedge clk);
        $finish;
    end

    always@(posedge clk) begin 
        $display("datain=%h, result=%h, result_ref=%h, %s", datain, result, result_ref, result == result_ref ? "PASS" : "FAIL--->");
    end
endmodule
