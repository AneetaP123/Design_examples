// Code your testbench here
// or browse Examples
`timescale 1ns/1ps

module tb_mux2to1;

    // Testbench signals
    reg I0, I1, I2, I3, S0,S1;
    wire y;

    // Instantiate the mux
    mux4to2 uut (
      .I0(I0),
      .I1(I1),
      .I2(I2),
      .I3(I3),
      .S0(S0),
      .S1(S1),
        .y(y)
    );

    // Stimulus
    initial begin
        // Display header
        $display("Time\t sel a b | y");
        $display("---------------------");

        // Test all combinations
      I0 = 0; I1 = 0; I2 = 0; I3 = 0; S0 = 0; S1 = 0;#10 $display("%0t\t %b  %b | %b %b %b %b | %b", $time, S1,S0,I3,I2,I1,I0, y);
      I0 = 1; I1 = 0; I2 = 0; I3 = 0; S0 = 0; S1 = 0; #10 $display("%0t\t %b  %b | %b %b %b %b | %b", $time, S1,S0,I3,I2,I1,I0, y);
      I0 = 0; I1 = 1; I2 = 0; I3 = 0; S0 = 0; S1 = 1; #10 $display("%0t\t %b  %b | %b %b %b %b | %b", $time, S1,S0,I3,I2,I1,I0, y);
      I0 = 0; I1 = 0; I2 = 1; I3 = 0; S0 = 1; S1 = 0; #10 $display("%0t\t %b  %b | %b %b %b %b | %b", $time, S1,S0,I3,I2,I1,I0, y);
      I0 = 0; I1 = 0; I2 = 1; I3 = 1; S0 = 1; S1 = 1; #10 $display("%0t\t %b  %b | %b %b %b %b | %b", $time, S0,S1,I0,I1,I2,I3, y);

        $finish; // End simulation
    end

endmodule
  
  
