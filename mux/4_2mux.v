// Code your design here
module mux4to2 (
    input wire I0,      
    input wire I1,
  	input wire I2,
    input wire I3,
    input wire S0,    
    input wire S1,
    output wire y      // output
);
  assign y = (S0 == 0 && S1 ==0) ? I0 : 
    (S0 == 0 && S1 == 1) ? I1 :
    (S0 == 1 && S1 == 0 ) ? I2 : 
    I3;
endmodule
