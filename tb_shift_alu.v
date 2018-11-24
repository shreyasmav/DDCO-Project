module tb;
    reg [15:0] i0, i1;
    reg [2:0] op;
    wire [15:0] outp;
    wire cout;

    initial begin
      $dumpfile("tb.vcd");
      $dumpvars(0, tb);
    end

    alu alu_m( op, i0, i1, outp, cout);

    initial begin
      i0 = 16'h5b7f;
      i1 = 16'h0011;
      op = 3'b000;
      #5
      op = 3'b001;
      #5
      op = 3'b010;
      #5
      op = 3'b011;
      #5
      op = 3'b100;
      #5
      op = 3'b101;
      #5
      op = 3'b110;
      #5
      op = 3'b111;
      #5

      i1 = 16'h6fff;
      op = 3'b000;
      #5
      op = 3'b001;
      #5
      op = 3'b010;
      #5
      op = 3'b011;
      #5
      op = 3'b100;
      #5
      op = 3'b101;
      #5
      op = 3'b110;
      #5
      op = 3'b111;
      #5;
    end

endmodule