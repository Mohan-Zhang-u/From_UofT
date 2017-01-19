# Set the working dir, where all compiled Verilog goes.
vlib work

# Compile all verilog modules in mux.v to working dir;
# could also have multiple verilog files.
vlog datapath.v

# Load simulation using mux as the top level simulation module.
vsim datapath

# Log all signals and add some signals to waveform window.
log {/*}
# add wave {/*} would add all items in top level simulation module.
add wave {/*}

# Repetition
force {KEY[0]} 1 0ns, 0 1ns -repeat 2ns


# Initialization
force {KEY[1]} 0
force {SW[0]} 0
force {SW[1]} 0
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 0
force {SW[4]} 0
force {SW[5]} 0
force {SW[6]} 0
force {SW[7]} 0
force {SW[8]} 0
force {SW[9]} 0
run 10ns

force {KEY[1]} 1
force {SW[0]} 1
force {SW[1]} 0
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 1
force {SW[4]} 1
force {SW[5]} 1
force {SW[6]} 1
force {SW[7]} 1
force {SW[8]} 0
force {SW[9]} 0
run 10ns 

# Begin to draw
force {KEY[1]} 0
run 10ns

force {KEY[2]} 1
run 10ns

force {KEY[2]} 0
run 10ns

force {KEY[2]} 1
run 10ns

force {KEY[2]} 0
run 10ns

force {KEY[2]} 1
run 10ns

force {KEY[2]} 0
run 10ns

force {KEY[2]} 1
run 10ns

force {KEY[2]} 0
run 10ns

force {KEY[2]} 1
run 10ns

force {KEY[2]} 0
run 10ns

force {KEY[2]} 1
run 10ns

force {KEY[2]} 0
run 10ns

force {KEY[2]} 1
run 10ns

force {KEY[2]} 0
run 10ns

force {KEY[2]} 1
run 10ns

force {KEY[2]} 0
run 10ns

force {KEY[2]} 1
run 10ns

force {KEY[2]} 0
run 10ns

force {KEY[2]} 1
run 10ns

force {KEY[2]} 0
run 10ns

force {KEY[2]} 1
run 10ns

force {KEY[2]} 0
run 10ns

force {KEY[2]} 1
run 10ns

force {KEY[2]} 0
run 10ns

force {KEY[2]} 1
run 10ns

force {KEY[2]} 0
run 10ns

force {KEY[2]} 1
run 10ns

force {KEY[2]} 0
run 10ns

force {KEY[2]} 1
run 10ns

force {KEY[2]} 0
run 10ns

# Draw another color at different location

