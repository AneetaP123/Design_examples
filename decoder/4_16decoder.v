module decoder4to16(
  	input wire A3,
    input wire A2,
    input wire A1,
    input wire A0,
    output wire [7:0] Y
);

  	assign Y[0] = (~A3 & ~A2 & ~A1 & ~A0);
    assign Y[1] = (~A3 & ~A2 & ~A1 &  A0);
    assign Y[2] = (~A3 & ~A2 &  A1 & ~A0);
    assign Y[3] = (~A3 & ~A2 &  A1 &  A0);
    assign Y[4] = (~A3 &  A2 & ~A1 & ~A0);
    assign Y[5] = (~A3 &  A2 & ~A1 &  A0);
    assign Y[6] = (~A3 &  A2 &  A1 & ~A0);
    assign Y[7] = (~A3 &  A2 &  A1 &  A0);
  	assign Y[8] = (A3 &  ~A2 & ~A1 & ~A0);
  	assign Y[9] = (A3 &  ~A2 & ~A1 &  A0);
  	assign Y[10] = (A3 &  ~A2 &  A1 & ~A0);
  	assign Y[11] = (A3 &  ~A2 &  A1 &  A0);
  	assign Y[12] = (A3 &   A2 & ~A1 & ~A0);
  	assign Y[13] = (A3 &   A2 & ~A1 &  A0);
  	assign Y[14] = (A3 &   A2 &  A1 & ~A0);
  	assign Y[15] = (A3 &   A2 &  A1 &  A0);
endmodule
