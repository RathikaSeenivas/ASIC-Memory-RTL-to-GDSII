# Clock definition

create_clock -name clk -period 2 [get_ports clk]

set_clock_transition -rise 0.1 [get_clocks "clk"]
set_clock_transition -fall 0.1 [get_clocks "clk"]
set_clock_uncertainty 0.01 [get_ports "clk"]


# Input delay constraint

set_input_delay 0.4 -clock clk [get_ports addr*]
set_input_delay 0.4 -clock clk [get_ports data_in*]
set_input_delay 0.4 -clock clk [get_ports cs]
set_input_delay 0.4 -clock clk [get_ports we]
set_input_delay 0.4 -clock clk [get_ports re]


# Output delay constraint

set_output_delay 0.4 -clock clk [get_ports data_out*]
