`timescale 1ns/1ps

module tb_decoder4to16;

    // Testbench signals
    reg A3,A2, A1, A0;
  wire [15:0] Y;

    // Instantiate the decoder
    decoder4to16 uut (
        .A3(A3),
        .A2(A2),
        .A1(A1),
        .A0(A0),
        .Y(Y)
    );
	integer i;
    // Stimulus
    initial begin
      	$display("Time\t A3 A2 A1 A0 | Y15 Y14 Y13 Y12 Y11 Y10 Y9 Y8 Y7 Y6 Y5 Y4 Y3 Y2 Y1 Y0");
        $display("---------------------------------------------");

        // Loop through all input combinations
      
      for (i = 0; i < 16; i = i + 1) begin
        {A3, A2, A1, A0} = i; #10;
          $display("%0t\t %b %b %b  %b | %b", $time, A3, A2, A1, A0, Y);
        end

        $finish;
    end

endmodule
  
  
