# Clock definition
create_clock -name clk -period 10 [get_ports clk]

# Input delays
set_input_delay 2.0 -clock clk [all_inputs]

# Output delays
set_output_delay 2.0 -clock clk [all_outputs]

# Clock uncertainty
set_clock_uncertainty 0.2 [get_clocks clk]

# Driving cell assumptions
set_driving_cell -lib_cell INVX1 [all_inputs]

# Load assumptions
set_load 0.1 [all_outputs]
