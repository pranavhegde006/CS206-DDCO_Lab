module AND(input wire [15:0] i0, i1, output wire[15:0] AND_o);
    and2 f0(i0[0], i1[0], AND_o[0]);
    and2 f1(i0[1], i1[1], AND_o[1]);
    and2 f2(i0[2], i1[2], AND_o[2]);
    and2 f3(i0[3], i1[3], AND_o[3]);
    and2 f4(i0[4], i1[4], AND_o[4]);
    and2 f5(i0[5], i1[5], AND_o[5]);
    and2 f6(i0[6], i1[6], AND_o[6]);
    and2 f7(i0[7], i1[7], AND_o[7]);
    and2 f8(i0[8], i1[8], AND_o[8]);
    and2 f9(i0[9], i1[9], AND_o[9]);
    and2 f10(i0[10], i1[10], AND_o[10]);
    and2 f11(i0[11], i1[11], AND_o[11]);
    and2 f12(i0[12], i1[12], AND_o[12]);
    and2 f13(i0[13], i1[13], AND_o[13]);
    and2 f14(i0[14], i1[14], AND_o[14]);
    and2 f15(i0[15], i1[15], AND_o[15]);
endmodule


module OR(input wire [15:0] i0, i1, output wire[15:0] OR_o);
    or2 f0(i0[0], i1[0], OR_o[0]);
    or2 f1(i0[1], i1[1], OR_o[1]);
    or2 f2(i0[2], i1[2], OR_o[2]);
    or2 f3(i0[3], i1[3], OR_o[3]);
    or2 f4(i0[4], i1[4], OR_o[4]);
    or2 f5(i0[5], i1[5], OR_o[5]);
    or2 f6(i0[6], i1[6], OR_o[6]);
    or2 f7(i0[7], i1[7], OR_o[7]);
    or2 f8(i0[8], i1[8], OR_o[8]);
    or2 f9(i0[9], i1[9], OR_o[9]);
    or2 f10(i0[10], i1[10], OR_o[10]);
    or2 f11(i0[11], i1[11], OR_o[11]);
    or2 f12(i0[12], i1[12], OR_o[12]);
    or2 f13(i0[13], i1[13], OR_o[13]);
    or2 f14(i0[14], i1[14], OR_o[14]);
    or2 f15(i0[15], i1[15], OR_o[15]);
endmodule


module MUX(input wire [15:0] i0, i1, input wire s, output wire [15:0] MUX_o);
    mux2 f0(i0[0], i1[0], s, MUX_o[0]);
    mux2 f1(i0[1], i1[1], s, MUX_o[1]);
    mux2 f2(i0[2], i1[2], s, MUX_o[2]);
    mux2 f3(i0[3], i1[3], s, MUX_o[3]);
    mux2 f4(i0[4], i1[4], s, MUX_o[4]);
    mux2 f5(i0[5], i1[5], s, MUX_o[5]);
    mux2 f6(i0[6], i1[6], s, MUX_o[6]);
    mux2 f7(i0[7], i1[7], s, MUX_o[7]);
    mux2 f8(i0[8], i1[8], s, MUX_o[8]);
    mux2 f9(i0[9], i1[9], s, MUX_o[9]);
    mux2 f10(i0[10], i1[10], s, MUX_o[10]);
    mux2 f11(i0[11], i1[11], s, MUX_o[11]);
    mux2 f12(i0[12], i1[12], s, MUX_o[12]);
    mux2 f13(i0[13], i1[13], s, MUX_o[13]);
    mux2 f14(i0[14], i1[14], s, MUX_o[14]);
    mux2 f15(i0[15], i1[15], s, MUX_o[15]);
endmodule


module FA(A, B, Cin, S, Cout);
    input A;
    input B;
    input Cin;
    output S;
    output Cout;

    wire W1, W2, W3;

    xor2 X1(A, B, W1);
    and2 A1(W1, Cin, W2);
    and2 A2(A, B, W3);
    xor2 X2(W1, Cin, S);
    or2 O1(W2, W3, Cout);
endmodule


module FAS(M, A, B, Cin, D, Cout);
    input M;
    input A;
    input B;
    input Cin;
    output D;
    output Cout;

    wire W4;

    xor2 X3(B, M, W4);
    FA d(A, W4, Cin, D, Cout);
endmodule

module ALUSlice(input wire Op, input wire [15:0] A, B, output wire [15:0] S, output wire Cout);

    output wire [15:0] C;

    FAS alu_f1 (Op, A[0], B[0], Op, S[0], C[0]);
    FAS alu_f2 (Op, A[1], B[1], C[0], S[1], C[1]);
    FAS alu_f3 (Op, A[2], B[2], C[1], S[2], C[2]);
    FAS alu_f4 (Op, A[3], B[3], C[2], S[3], C[3]);
    FAS alu_f5 (Op, A[4], B[4], C[3], S[4], C[4]);
    FAS alu_f6 (Op, A[5], B[5], C[4], S[5], C[5]);
    FAS alu_f7 (Op, A[6], B[6], C[5], S[6], C[6]);
    FAS alu_f8 (Op, A[7], B[7], C[6], S[7], C[7]);
    FAS alu_f9 (Op, A[8], B[8], C[7], S[8], C[8]);
    FAS alu_f10 (Op, A[9], B[9], C[8], S[9], C[9]);
    FAS alu_f11 (Op, A[10], B[10], C[9], S[10], C[10]);
    FAS alu_f12 (Op, A[11], B[11], C[10], S[11], C[11]);
    FAS alu_f13 (Op, A[12], B[12], C[11], S[12], C[12]);
    FAS alu_f14 (Op, A[13], B[13], C[12], S[13], C[13]);
    FAS alu_f15 (Op, A[14], B[14], C[13], S[14], C[14]);
    FAS alu_f16 (Op, A[15], B[15], C[14], S[15], C[15]);
    assign Cout = C[15];
endmodule


module alu(input wire [1:0] op, input wire [15:0] i0, i1, output wire [15:0] o, output wire cout);
    wire [15:0] AND_o, OR_o, FAS_o, AO_o;

    ALUSlice alu_op_1(op[0], i0, i1, FAS_o, cout);
    AND alu_op_2(i0, i1, AND_o);
    OR alu_op_3(i0, i1, OR_o);

    MUX alu_op_4(AND_o, OR_o, op[0], AO_o);
    MUX alu_op_5(FAS_o, AO_o, op[1], o);
endmodule
