module tb_CSkipA8;
  wire [7:0] sum;
  wire cout;
  reg [7:0] a, b;

  // Instantiate the Carry Skip Adder
  CSkipA8 csa8(sum, cout, a, b); // Corrected to not use [7:0] explicitly since it's already a reg.

  initial begin
    // Display header for the output
    $display("a       | b       || cout | sum     ");
    // Monitor outputs in real-time
    $monitor("%b | %b || %b   | %b", a, b, cout, sum);
    
    // Test cases
    a = 8'b10100000; b = 8'b10100000; #10;
    a = 8'b01011000; b = 8'b11110100; #10;
    a = 8'b00111101; b = 8'b00001111; #10;
    a = 8'b11001010; b = 8'b11001000; #10;
    a = 8'b10100110; b = 8'b11110100; #10;
    a = 8'b11110011; b = 8'b11001100; #10;
    a = 8'b11110011; b = 8'b01010111; #10;
    
    // End simulation
    $finish;
  end
endmodule
