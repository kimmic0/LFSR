module lfsr_tb();
logic clk_tb;
logic rst_tb; 
logic [3:0] q_tb; 
logic push_tb;
logic [6:0] segment1_tb;
logic [6:0] segment2_tb;
logic [6:0] segment3_tb;
logic [6:0] segment4_tb;

initial
begin
    clk_tb = 0;
    rst_tb = 1;
    #20;
    
    rst_tb = 0;
    #200;



	 push_tb = 1;
	
end


always
begin
    #5;
    clk_tb = ~ clk_tb;
end

lfsr dut(clk_tb,rst_tb, q_tb, push_tb, segment1_tb, segment2_tb, segment3_tb, segment4_tb);
endmodule



