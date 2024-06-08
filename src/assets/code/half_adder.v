// generated by ChatGPT
module half_adder (
    input wire A,    // First input
    input wire B,    // Second input
    output wire S,   // Sum output
    output wire Cout // Carry-out output
);
    // Sum is the XOR of A and B
    assign S = A ^ B;
    // Carry-out is the AND of A and B
    assign Cout = A & B;
endmodule