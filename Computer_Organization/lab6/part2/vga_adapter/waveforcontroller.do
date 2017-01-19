# Set the working dir, where all compiled Verilog goes.
vlib work

# Compile all verilog modules in mux.v to working dir;
# could also have multiple verilog files.
vlog vga_controller.v

# Load simulation using mux as the top level simulation module.
vsim vga_controller

# Log all signals and add some signals to waveform window.
log {/*}
# add wave {/*} would add all items in top level simulation module.
add wave {/*}

# Repetition
force {KEY[1]} 1 0ns, 0 1ns -repeat 2ns

# LEDR[0]: plot
# LEDR[1]: load_x
# LEDR[2]: counter_en

# Initialization
force {KEY[1]} 1
force {SW[0]} 1
force {SW[1]} 0


run 10ns


# Drawing square 
force {SW[1]} 1

run 100ns

force {SW[1]} 0
run 100ns


