# Set the working dir, where all compiled Verilog goes.
vlib work

# Compile all verilog modules in mux.v to working dir;
# could also have multiple verilog files.
vlog lab4part3.v

# Load simulation using mux4to1 as the top level simulation module.
vsim lab4part3

# Log all signals and add some signals to waveform window.
log {/*}
# add wave {/*} would add all items in top level simulation module.
add wave {/*}

force {CLOCK_50} 0 0 ns, 1 10 ns -r 20 ns

force {SW[0]} 0 0, 0 10 ns -r 200000 ns

force {SW[1]} 0 0, 1 10 ns -r 200000 ns

force {SW[2]} 0 0, 1 10 ns -r 200000 ns

force {KEY[0]} 0 0, 1 20 ns -r 2000000 ns

force {KEY[1]} 0 0, 1 20 ns -r 200000 ns

run 2000000000000000000 ns 
