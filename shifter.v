module sll(input wire [15:0] i, input wire [3:0] shamt, output wire [15:0] o);
    mux16 m_15( { i[15], i[14], i[13], i[12], i[11], i[10], i[9], i[8], i[7], i[6], i[5], i[4], i[3], i[2], i[1], i[0] }, shamt, o[15]);
    mux16 m_14( { i[14], i[13], i[12], i[11], i[10], i[9], i[8], i[7], i[6], i[5], i[4], i[3], i[2], i[1], i[0], 1'b0 }, shamt, o[14]);
    mux16 m_13( { i[13], i[12], i[11], i[10], i[9], i[8], i[7], i[6], i[5], i[4], i[3], i[2], i[1], i[0], 1'b0, 1'b0 }, shamt, o[13]);
    mux16 m_12( { i[12], i[11], i[10], i[9], i[8], i[7], i[6], i[5], i[4], i[3], i[2], i[1], i[0], 1'b0, 1'b0, 1'b0 }, shamt, o[12]);
    mux16 m_11( { i[11], i[10], i[9], i[8], i[7], i[6], i[5], i[4], i[3], i[2], i[1], i[0], 1'b0, 1'b0, 1'b0, 1'b0 }, shamt, o[11]);
    mux16 m_10( { i[10], i[9], i[8], i[7], i[6], i[5], i[4], i[3], i[2], i[1], i[0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 }, shamt, o[10]);
    mux16 m_9( { i[9], i[8], i[7], i[6], i[5], i[4], i[3], i[2], i[1], i[0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 }, shamt, o[9]);
    mux16 m_8( { i[8], i[7], i[6], i[5], i[4], i[3], i[2], i[1], i[0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 }, shamt, o[8]);
    mux16 m_7( { i[7], i[6], i[5], i[4], i[3], i[2], i[1], i[0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 }, shamt, o[7]);
    mux16 m_6( { i[6], i[5], i[4], i[3], i[2], i[1], i[0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 }, shamt, o[6]);
    mux16 m_5( { i[5], i[4], i[3], i[2], i[1], i[0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 }, shamt, o[5]);
    mux16 m_4( { i[4], i[3], i[2], i[1], i[0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 }, shamt, o[4]);
    mux16 m_3( { i[3], i[2], i[1], i[0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 }, shamt, o[3]);
    mux16 m_2( { i[2], i[1], i[0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 }, shamt, o[2]);
    mux16 m_1( { i[1], i[0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 }, shamt, o[1]);
    mux16 m_0( { i[0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 }, shamt, o[0]);
endmodule

module srl(input wire [15:0] i, input wire [3:0] shamt, output wire [15:0] o);
    mux16 m_0( { i[0], i[1], i[2], i[3], i[4], i[5], i[6], i[7], i[8], i[9], i[10], i[11], i[12], i[13], i[14], i[15] }, shamt, o[0]);
    mux16 m_1( { i[1], i[2], i[3], i[4], i[5], i[6], i[7], i[8], i[9], i[10], i[11], i[12], i[13], i[14], i[15], 1'b0 }, shamt, o[1]);
    mux16 m_2( { i[2], i[3], i[4], i[5], i[6], i[7], i[8], i[9], i[10], i[11], i[12], i[13], i[14], i[15], 1'b0, 1'b0 }, shamt, o[2]);
    mux16 m_3( { i[3], i[4], i[5], i[6], i[7], i[8], i[9], i[10], i[11], i[12], i[13], i[14], i[15], 1'b0, 1'b0, 1'b0 }, shamt, o[3]);
    mux16 m_4( { i[4], i[5], i[6], i[7], i[8], i[9], i[10], i[11], i[12], i[13], i[14], i[15], 1'b0, 1'b0, 1'b0, 1'b0 }, shamt, o[4]);
    mux16 m_5( { i[5], i[6], i[7], i[8], i[9], i[10], i[11], i[12], i[13], i[14], i[15], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 }, shamt, o[5]);
    mux16 m_6( { i[6], i[7], i[8], i[9], i[10], i[11], i[12], i[13], i[14], i[15], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 }, shamt, o[6]);
    mux16 m_7( { i[7], i[8], i[9], i[10], i[11], i[12], i[13], i[14], i[15], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 }, shamt, o[7]);
    mux16 m_8( { i[8], i[9], i[10], i[11], i[12], i[13], i[14], i[15], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 }, shamt, o[8]);
    mux16 m_9( { i[9], i[10], i[11], i[12], i[13], i[14], i[15], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 }, shamt, o[9]);
    mux16 m_10( { i[10], i[11], i[12], i[13], i[14], i[15], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 }, shamt, o[10]);
    mux16 m_11( { i[11], i[12], i[13], i[14], i[15], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 }, shamt, o[11]);
    mux16 m_12( { i[12], i[13], i[14], i[15], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 }, shamt, o[12]);
    mux16 m_13( { i[13], i[14], i[15], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 }, shamt, o[13]);
    mux16 m_14( { i[14], i[15], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 }, shamt, o[14]);
    mux16 m_15( { i[15], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 }, shamt, o[15]);
endmodule

module sra(input wire [15:0] i, input wire [3:0] shamt, output wire [15:0] o);
    mux16 m_0( { i[0], i[1], i[2], i[3], i[4], i[5], i[6], i[7], i[8], i[9], i[10], i[11], i[12], i[13], i[14], i[15] }, shamt, o[0]);
    mux16 m_1( { i[1], i[2], i[3], i[4], i[5], i[6], i[7], i[8], i[9], i[10], i[11], i[12], i[13], i[14], i[15], i[15] }, shamt, o[1]);
    mux16 m_2( { i[2], i[3], i[4], i[5], i[6], i[7], i[8], i[9], i[10], i[11], i[12], i[13], i[14], i[15], i[15], i[15] }, shamt, o[2]);
    mux16 m_3( { i[3], i[4], i[5], i[6], i[7], i[8], i[9], i[10], i[11], i[12], i[13], i[14], i[15], i[15], i[15], i[15] }, shamt, o[3]);
    mux16 m_4( { i[4], i[5], i[6], i[7], i[8], i[9], i[10], i[11], i[12], i[13], i[14], i[15], i[15], i[15], i[15], i[15] }, shamt, o[4]);
    mux16 m_5( { i[5], i[6], i[7], i[8], i[9], i[10], i[11], i[12], i[13], i[14], i[15], i[15], i[15], i[15], i[15], i[15] }, shamt, o[5]);
    mux16 m_6( { i[6], i[7], i[8], i[9], i[10], i[11], i[12], i[13], i[14], i[15], i[15], i[15], i[15], i[15], i[15], i[15] }, shamt, o[6]);
    mux16 m_7( { i[7], i[8], i[9], i[10], i[11], i[12], i[13], i[14], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15] }, shamt, o[7]);
    mux16 m_8( { i[8], i[9], i[10], i[11], i[12], i[13], i[14], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15] }, shamt, o[8]);
    mux16 m_9( { i[9], i[10], i[11], i[12], i[13], i[14], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15] }, shamt, o[9]);
    mux16 m_10( { i[10], i[11], i[12], i[13], i[14], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15] }, shamt, o[10]);
    mux16 m_11( { i[11], i[12], i[13], i[14], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15] }, shamt, o[11]);
    mux16 m_12( { i[12], i[13], i[14], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15] }, shamt, o[12]);
    mux16 m_13( { i[13], i[14], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15] }, shamt, o[13]);
    mux16 m_14( { i[14], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15] }, shamt, o[14]);
    mux16 m_15( { i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15] }, shamt, o[15]);
endmodule

module mux16(input wire [0:15] i, input wire [3:0] shamt, output wire o);

    mux8 upper(i[0:7], shamt[0], shamt[1], shamt[2], o1);
    mux8 lower(i[8:15], shamt[0], shamt[1], shamt[2], o2);
    mux2 final(o1, o2, shamt[3], o);

endmodule