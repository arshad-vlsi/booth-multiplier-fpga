
# Clock period: 10 ns (100 MHz)
create_clock -name clk -period 10 [get_ports clk]

# Clock uncertainty
set_clock_uncertainty 0.2 [get_clocks clk]

# Input delays for multiplier operands
set_input_delay 1.0 -clock clk [get_ports {m[*] q[*]}]

# Output delays for registered product
set_output_delay 1.0 -clock clk [get_ports {y[*]}]

