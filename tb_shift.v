module tb;
    reg [15:0] i;
    reg [3:0] shamt;
    wire [15:0] sllv, srlv, srav;

    initial begin
        $dumpfile("tb.vcd");
		$dumpvars(0, tb);
    end

    sll sll_m(i, shamt, sllv);
    srl srl_m(i, shamt, srlv);
    sra sra_m(i, shamt, srav);

    initial begin
      shamt = 4'h2;
      i = 16'hac57;
      #5
      shamt = 4'h3;
      #5
      shamt = 4'h8;
      #5;
    end

endmodule