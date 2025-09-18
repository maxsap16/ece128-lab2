# ece128-lab2

### Project Description
The goal for this project is to design a 1 bit full adder and 4 bit full adder that uses multiple 1 bit full adders as building blocks. Each adder accepts three inputs such as A, B, and c_in(carry in) and two outputs such as s(sum) and c_out(carry out). Since two different ways to implement the 4 bit full adder were discussed, the design was created using both the "ripple carry" and "carry look ahead" methods. As mentioned before, both of these designs use the previouisly created 1 bit full adder as a submodule. The designs for the 4 bit adders are then to be tested and loaded onto an FPGA board with proper switch and led assignments so that the implementation can be observed with input in real time.

### Simlation/Implementation Instructions

1. After the source code and testbench files are written, run the synthesis of your code to make sure there are no errors.
2. Then, locate the dropdown on the left that allows you to run a behavioral simulation of your project. Observe the waveform diagram generated, and make sure the output matches what is expected given the three input bits(A, B, c_in). There are many possible combinations of 4-bit numbers to be tested so make sure to zoom in on various parts of the simulation to verify it is working properly.
3. If everything is correct, assign your many inputs to the switches(in addition to c_in, A and B get four each since they are both 4 bit numbers) and your two outputs to the led lights(sum also gets four lights as an output since it is a four bit number).
4. Generate the bitsream, open the hardware manager, and load the bitstream file into your FPGA board.
5. When the implementation is loaded, start to alter the switches to test your design and observe how the 4 bit full adder functions.
