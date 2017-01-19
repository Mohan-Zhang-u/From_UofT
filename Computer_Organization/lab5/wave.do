# Set the working dir, where all compiled Verilog goes.
vlib work

# Compile all verilog modules in mux.v to working dir;
# could also have multiple verilog files.
vlog part1.v

# Load simulation using mux4to1 as the top level simulation module.
vsim part1

# Log all signals and add some signals to waveform window.
log {/*}
# add wave {/*} would add all items in top level simulation module.
add wave {/*}

force {KEY[0]} 0 0 ns, 1 10 ns -r 20 ns

force {SW[1]} 0 0, 1 60 ns -r 200 ns

force {SW[0]} 0 0, 1 10 ns -r 1000 ns

run 2000 ns 