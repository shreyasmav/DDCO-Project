module alu (input wire [2:0] op, input wire [15:0] i0, i1, output wire [15:0] o, output wire carry);

	wire [15:0] add_op, sub_op, and_op, or_op, sll_op, srl_op, sra_op;
    wire add_carry, sub_carry;

    STBitAddSub add_unit( i0, i1, 1'b0, add_op, add_carry );
    STBitAddSub sub_unit( i0, i1, 1'b1, sub_op, sub_carry );
    and2x and_unit( i0, i1, and_op );
    or2x or_unit( i0, i1, or_op );

    sll sll_unit( i0, i1[3:0], sll_op );
    srl srl_unit( i0, i1[3:0], srl_op );
    sra sra_unit( i0, i1[3:0], sra_op );

    STBit8to1Mux outp( add_op, sub_op, and_op, or_op, sll_op, srl_op, sra_op, {15'h0, sub_op[15]}, op, o );

    mux2 outc( add_carry, sub_carry, op[0], carry );

endmodule


module FA(input wire a,b,c, output s, carr);
	xor3 x3(a,b,c, s);
	wire t1,t2,t3;
	and2 ab(a, b, t1);
	and2 bc(b, c, t2);
	and2 ac(a, c, t3);
	or3 carry(t1, t2, t3, carr);
endmodule

module OneBitAddSub(input a, b, c, addsub, output sum, carr);
    wire t;

    xor2 b_x(b, addsub, t);
    FA s_c( a, t, c, sum, carr );
endmodule

module STBitAddSub(i0, i1, addsub, s, carr);
    input [15:0] i0, i1;
    input addsub;
    output [15:0] s;
    output carr;

    wire [14:0] tempcarr;

    OneBitAddSub f_0( i0[0], i1[0], addsub, addsub, s[0], tempcarr[0] );
    OneBitAddSub f_1( i0[1], i1[1], tempcarr[0], addsub, s[1], tempcarr[1] );
    OneBitAddSub f_2( i0[2], i1[2], tempcarr[1], addsub, s[2], tempcarr[2] );
    OneBitAddSub f_3( i0[3], i1[3], tempcarr[2], addsub, s[3], tempcarr[3] );
    OneBitAddSub f_4( i0[4], i1[4], tempcarr[3], addsub, s[4], tempcarr[4] );
    OneBitAddSub f_5( i0[5], i1[5], tempcarr[4], addsub, s[5], tempcarr[5] );
    OneBitAddSub f_6( i0[6], i1[6], tempcarr[5], addsub, s[6], tempcarr[6] );
    OneBitAddSub f_7( i0[7], i1[7], tempcarr[6], addsub, s[7], tempcarr[7] );
    OneBitAddSub f_8( i0[8], i1[8], tempcarr[7], addsub, s[8], tempcarr[8] );
    OneBitAddSub f_9( i0[9], i1[9], tempcarr[8], addsub, s[9], tempcarr[9] );
    OneBitAddSub f_10( i0[10], i1[10], tempcarr[9], addsub, s[10], tempcarr[10] );
    OneBitAddSub f_11( i0[11], i1[11], tempcarr[10], addsub, s[11], tempcarr[11] );
    OneBitAddSub f_12( i0[12], i1[12], tempcarr[11], addsub, s[12], tempcarr[12] );
    OneBitAddSub f_13( i0[13], i1[13], tempcarr[12], addsub, s[13], tempcarr[13] );
    OneBitAddSub f_14( i0[14], i1[14], tempcarr[13], addsub, s[14], tempcarr[14] );
    OneBitAddSub f_15( i0[15], i1[15], tempcarr[14], addsub, s[15], carr );
    
endmodule

module and2x(i0, i1, o);
    input [15:0] i0, i1;
    output [15:0] o;

	and2 f_1( i0[0], i1[0], o[0] );
	and2 f_2( i0[1], i1[1], o[1] );
	and2 f_3( i0[2], i1[2], o[2] );
	and2 f_4( i0[3], i1[3], o[3] );
	and2 f_5( i0[4], i1[4], o[4] );
	and2 f_6( i0[5], i1[5], o[5] );
	and2 f_7( i0[6], i1[6], o[6] );
	and2 f_8( i0[7], i1[7], o[7] );
	and2 f_9( i0[8], i1[8], o[8] );
	and2 f_10( i0[9], i1[9], o[9] );
	and2 f_11( i0[10], i1[10], o[10] );
	and2 f_12( i0[11], i1[11], o[11] );
	and2 f_13( i0[12], i1[12], o[12] );
	and2 f_14( i0[13], i1[13], o[13] );
	and2 f_15( i0[14], i1[14], o[14] );
	and2 f_16( i0[15], i1[15], o[15] );
endmodule

module or2x(i0, i1, o);
    input [15:0] i0, i1;
    output [15:0] o;

    or2 f_1( i0[0], i1[0], o[0] );
	or2 f_2( i0[1], i1[1], o[1] );
	or2 f_3( i0[2], i1[2], o[2] );
	or2 f_4( i0[3], i1[3], o[3] );
	or2 f_5( i0[4], i1[4], o[4] );
	or2 f_6( i0[5], i1[5], o[5] );
	or2 f_7( i0[6], i1[6], o[6] );
	or2 f_8( i0[7], i1[7], o[7] );
	or2 f_9( i0[8], i1[8], o[8] );
	or2 f_10( i0[9], i1[9], o[9] );
	or2 f_11( i0[10], i1[10], o[10] );
	or2 f_12( i0[11], i1[11], o[11] );
	or2 f_13( i0[12], i1[12], o[12] );
	or2 f_14( i0[13], i1[13], o[13] );
	or2 f_15( i0[14], i1[14], o[14] );
	or2 f_16( i0[15], i1[15], o[15] );

endmodule

module STBit8to1Mux(input [15:0] i0, i1, i2, i3, i4, i5, i6, i7, input [2:0] s, output [15:0] o);
    mux8 op_0( { i0[0], i1[0], i2[0], i3[0], i4[0], i5[0], i6[0], i7[0] }, s[0], s[1], s[2], o[0] );
    mux8 op_1( { i0[1], i1[1], i2[1], i3[1], i4[1], i5[1], i6[1], i7[1] }, s[0], s[1], s[2], o[1] );
    mux8 op_2( { i0[2], i1[2], i2[2], i3[2], i4[2], i5[2], i6[2], i7[2] }, s[0], s[1], s[2], o[2] );
    mux8 op_3( { i0[3], i1[3], i2[3], i3[3], i4[3], i5[3], i6[3], i7[3] }, s[0], s[1], s[2], o[3] );
    mux8 op_4( { i0[4], i1[4], i2[4], i3[4], i4[4], i5[4], i6[4], i7[4] }, s[0], s[1], s[2], o[4] );
    mux8 op_5( { i0[5], i1[5], i2[5], i3[5], i4[5], i5[5], i6[5], i7[5] }, s[0], s[1], s[2], o[5] );
    mux8 op_6( { i0[6], i1[6], i2[6], i3[6], i4[6], i5[6], i6[6], i7[6] }, s[0], s[1], s[2], o[6] );
    mux8 op_7( { i0[7], i1[7], i2[7], i3[7], i4[7], i5[7], i6[7], i7[7] }, s[0], s[1], s[2], o[7] );
    mux8 op_8( { i0[8], i1[8], i2[8], i3[8], i4[8], i5[8], i6[8], i7[8] }, s[0], s[1], s[2], o[8] );
    mux8 op_9( { i0[9], i1[9], i2[9], i3[9], i4[9], i5[9], i6[9], i7[9] }, s[0], s[1], s[2], o[9] );
    mux8 op_10( { i0[10], i1[10], i2[10], i3[10], i4[10], i5[10], i6[10], i7[10] }, s[0], s[1], s[2], o[10] );
    mux8 op_11( { i0[11], i1[11], i2[11], i3[11], i4[11], i5[11], i6[11], i7[11] }, s[0], s[1], s[2], o[11] );
    mux8 op_12( { i0[12], i1[12], i2[12], i3[12], i4[12], i5[12], i6[12], i7[12] }, s[0], s[1], s[2], o[12] );
    mux8 op_13( { i0[13], i1[13], i2[13], i3[13], i4[13], i5[13], i6[13], i7[13] }, s[0], s[1], s[2], o[13] );
    mux8 op_14( { i0[14], i1[14], i2[14], i3[14], i4[14], i5[14], i6[14], i7[14] }, s[0], s[1], s[2], o[14] );
    mux8 op_15( { i0[15], i1[15], i2[15], i3[15], i4[15], i5[15], i6[15], i7[15] }, s[0], s[1], s[2], o[15] );
endmodule