`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:19:30 10/04/2018 
// Design Name: 
// Module Name:    ss_sort 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ss_sort(
   input  wire clk,
  input  wire [7:0] in1, in2, in3, in4, in5, in6, in7, in8,
  output reg  [7:0] out1, out2, out3, out4, out5, out6, out7, out8
  );
  reg [7:0] dat1, dat2, dat3, dat4, dat5, dat6, dat7, dat8;
  parameter N=8;
  always @(posedge clk)
  begin
      dat1 <= in1;
      dat2 <= in2;
      dat3 <= in3;
      dat4 <= in4;
      dat5 <= in5;
		dat6 <= in6;
		dat7 <= in7;
		dat8 <= in8;
  end
    integer c,d,position;
    reg [7:0] temp;
    reg [7:0] array [1:8];
    always @*
    begin
  array[1] = dat1;
  array[2] = dat2;
  array[3] = dat3;
  array[4] = dat4;
  array[5] = dat5;
  array[6] = dat6;
  array[7] = dat7;
  array[8] = dat8;
//  for (i = 8; i > 0; i = i - 1) begin
//  for (j = 1 ; j < i; j = j + 1) begin
//          if (array[j] < array[j + 1])
//          begin
//            temp = array[j];
//            array[j] = array[j + 1];
//            array[j + 1] = temp;
  //end end
  //end end
  
  for (c = 1; c < N; c=c+1)
   begin
      position = c;
     
      for (d = c + 1; d < N+1; d=d+1)
       begin
         if (array[position] > array[d])
            position = d;
      end
      if (position != c)
       begin
         temp = array[c];
         array[c] = array[position];
         array[position] = temp;
      end
   end
end
  
  
  
    always @(posedge clk)
    begin
      out1 <= array[1];
      out2 <= array[2];
      out3 <= array[3];
      out4 <= array[4];
      out5 <= array[5];
		out6 <= array[6];
		out7 <= array[7];
		out8 <= array[8];
  end

endmodule
