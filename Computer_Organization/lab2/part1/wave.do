# Set the working dir, where all compiled Verilog goes.
vlib work

# Compile all verilog modules in mux.v to working dir;
# could also have multiple verilog files.
vlog lab2part1.v

# Load simulation using mux4to1 as the top level simulation module.
vsim lab2part1

# Log all signals and add some signals to waveform window.
log {/*}
# add wave {/*} would add all items in top level simulation module.
add wave {/*}

force {SW[0]} 0 10 ns, 1 160 ns -r 320
force {SW[1]} 0 10 ns, 1 160 ns -r 320
force {SW[2]} 0 10 ns, 1 160 ns -r 320
force {SW[3]} 0 10 ns, 1 160 ns -r 320
force {SW[4]} 0 10 ns, 1 160 ns -r 320
force {SW[5]} 0 10 ns, 1 160 ns -r 320
force {SW[6]} 0 10 ns, 1 160 ns -r 320

force {SW[7]} 0 10 ns, 1 20 ns -r 320
force {SW[8]} 0 10 ns, 1 40 ns -r 320
force {SW[9]} 0 10 ns, 1 80 ns -r 320

