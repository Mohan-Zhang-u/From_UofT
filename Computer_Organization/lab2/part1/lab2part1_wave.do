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

#reset case

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


# First test case
# Set input values using the force command, signal names need to be in {} brackets.

force {SW[7]} 0
force {SW[8]} 0
force {SW[9]} 0
force {SW[0]} 1

# Run simulation for a few ns.
run 10ns

force {SW[7]} 0
force {SW[8]} 0
force {SW[9]} 0
force {SW[0]} 0

# Run simulation for a few ns.
run 10ns


force {SW[7]} 1
force {SW[8]} 0
force {SW[9]} 0
force {SW[1]} 1

# Run simulation for a few ns.
run 10ns

force {SW[7]} 1
force {SW[8]} 0
force {SW[9]} 0
force {SW[1]} 0

# Run simulation for a few ns.
run 10ns

force {SW[7]} 0
force {SW[8]} 1
force {SW[9]} 0
force {SW[2]} 1

# Run simulation for a few ns.
run 10ns

force {SW[7]} 0
force {SW[8]} 1
force {SW[9]} 0
force {SW[2]} 0

# Run simulation for a few ns.
run 10ns

force {SW[7]} 1
force {SW[8]} 1
force {SW[9]} 0
force {SW[3]} 1
run 10ns

force {SW[7]} 1
force {SW[8]} 1
force {SW[9]} 0
force {SW[3]} 0
run 10ns

force {SW[7]} 0
force {SW[8]} 0
force {SW[9]} 1
force {SW[4]} 1
run 10ns

force {SW[7]} 0
force {SW[8]} 0
force {SW[9]} 1
force {SW[4]} 0
run 10ns

force {SW[7]} 1
force {SW[8]} 0
force {SW[9]} 1
force {SW[5]} 1
run 10ns

force {SW[7]} 1
force {SW[8]} 0
force {SW[9]} 1
force {SW[5]} 0
run 10ns

force {SW[7]} 0
force {SW[8]} 1
force {SW[9]} 1
force {SW[6]} 1
run 10ns

force {SW[7]} 0
force {SW[8]} 1
force {SW[9]} 1
force {SW[6]} 0
run 10ns






