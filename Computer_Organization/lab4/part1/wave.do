
# Set the working dir, where all compiled Verilog goes.
vlib work

# Compile all verilog modules in mux.v to working dir;
# could also have multiple verilog files.
vlog lab4part1.v

# Load simulation using mux as the top level simulation module.
vsim lab4part1

# Log all signals and add some signals to waveform window.
log {/*}
# add wave {/*} would add all items in top level simulation module.
add wave {/*}

force {SW[0]} 1 
force {SW[1]} 0
force {KEY[0]} 0 0, 1 20 -r 40
run 40 ns

force {SW[0]} 0
force {SW[1]} 0
force {KEY[0]} 0 0, 1 20 -r 40
run 40 ns

force {SW[0]} 1 
force {SW[1]} 1
force {KEY[0]} 1
run 200 ns




