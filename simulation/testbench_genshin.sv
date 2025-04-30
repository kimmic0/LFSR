module lfsr_tb();
logic clk_tb;
logic rst_tb;
logic [7:0] out_tb;

initial
begin
    clk_tb = 0;
    rst_tb = 1;
    #15;
    
    rst_tb = 0;
    #200;
end

always
begin
    #5;
    clk_tb = ~ clk_tb;
end

lfsr DUT(out_tb,clk_tb,rst_tb);
endmodule

