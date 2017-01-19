# Set the working dir, where all compiled Verilog goes.
vlib work

# Compile all verilog modules in mux.v to working dir;
# could also have multiple verilogfiles.
vlog part2.v

# Load simulation using mux as the top level simulation module.
vsim part2

# Log all signals and add some signals to waveform window.
log {/*}
# add wave {/*} would add all items in top level simulation module.
add wave {/*}

force {SW [0]} 0force {SW [1]} 0force {SW [2]} 0force {SW [3]} 0force {SW [9]} 0
force {KEY[0]} 1force {KEY[1]} 1force {KEY[2]} 1force {KEY[3]} 1
run 10ns

# Test SW9: Reset
force {SW [9]} 1
run 10ns

# Test KEY1110: Clock with case 0
force {SW [0]} 1

#force {KEY[0]} 0
#run 10ns
force {KEY[0]} 1
run 10ns

force {SW [0]} 1
force {SW [1]} 1

force {KEY[0]} 0
run 10ns
force {KEY[0]} 1
run 10ns

# Test KEY000 case 7
force {KEY[3]} 0
force {KEY[2]} 0
force {KEY[1]} 0
force {KEY[0]} 1
run 10ns

force {KEY[0]} 0
run 10ns

force {KEY[0]} 1
run 10ns

force {KEY[0]} 0
run 10ns


# Test First type of Shift  case 5
force {KEY[3]} 0
force {KEY[2]} 1
force {KEY[1]} 0
force {KEY[0]} 1
run 10ns
force {KEY[0]} 0
run 10ns


force {KEY[0]} 1
run 10ns

force {KEY[0]} 0
run 10ns


force {KEY[0]} 1
run 10ns

force {KEY[0]} 0
run 10ns


# Test right shift caase 
force {SW[9]} 0
run 10ns

force {SW[9]} 1
run 10ns

force {SW [0]} 1force {SW [1]} 1force {SW [2]} 1force {SW [3]} 1force {SW [9]} 1
force {KEY[0]} 1force {KEY[1]} 1force {KEY[2]} 1force {KEY[3]} 1
run 10ns

force {KEY[0]} 0
run 10ns
force {KEY[0]} 1
run 10ns

force {SW [1]} 0force {SW [2]} 0force {SW [3]} 0
run 10ns

force {KEY[3]} 0
force {KEY[2]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns


force {KEY[0]} 0
run 10ns

force {KEY[0]} 1
run 10ns

force {KEY[0]} 0
run 10ns

force {KEY[0]} 1
run 10ns

force {KEY[0]} 0
run 10ns

force {KEY[0]} 1
run 10ns

force {KEY[0]} 0
run 10ns

force {KEY[0]} 1
run 10ns

# Case 2
force {SW [0]} 1force {SW [1]} 1force {SW [2]} 1force {SW [3]} 0force {SW [9]} 1
force {KEY[0]} 1force {KEY[1]} 1force {KEY[2]} 1force {KEY[3]} 1
run 10ns

force {KEY[0]} 0
run 10ns
force {KEY[0]} 1
run 10ns

force {KEY[2]} 0
force {KEY[0]} 0
run 10ns
force {KEY[0]} 1
run  10ns
force {KEY[0]} 0
run 10ns

force {KEY[0]} 1
run  10ns
force {KEY[0]} 0
run 10ns
force {KEY[0]} 1
run  10ns

# Case 3
force {SW [0]} 0force {SW [1]} 0force {SW [2]} 0force {SW [3]} 0force {SW [9]} 1
force {KEY[0]} 1force {KEY[1]} 1force {KEY[2]} 1force {KEY[3]} 1
run 10ns
force {KEY[2]} 0force {KEY[1]} 0
run 10ns

force {KEY[0]} 0
run 10ns

force {KEY[0]} 1
run 10ns

force {SW [0]} 1force {SW [1]} 1force {SW [2]} 0force {SW [3]} 0force {SW [9]} 1
force {KEY[0]} 1force {KEY[1]} 1force {KEY[2]} 1force {KEY[3]} 1
run 10ns
force {KEY[2]} 0force {KEY[1]} 0
run 10ns

force {KEY[0]} 0
run 10ns

force {KEY[0]} 1
run 10ns

# Case 4
force {SW [0]} 1force {SW [1]} 1force {SW [2]} 0force {SW [3]} 0force {SW [9]} 1
force {KEY[0]} 1force {KEY[1]} 1force {KEY[2]} 1force {KEY[3]} 1
run 10ns

force {KEY[0]} 0
run 10ns

force {KEY[0]} 1
run 10ns

force {KEY[3]} 0
run 10ns
force {KEY[0]} 0
run 10ns
force {KEY[0]} 1
force {KEY[3]} 1


force {SW [0]} 1force {SW [1]} 1force {SW [2]} 1force {SW [3]} 1force {SW [9]} 1
force {KEY[0]} 1force {KEY[1]} 1force {KEY[2]} 1force {KEY[3]} 1
run 10ns

force {KEY[0]} 0
run 10ns

force {KEY[0]} 1
run 10ns
force {KEY[3]} 0
run 10ns
force {KEY[0]} 0
run 10ns
force {KEY[0]} 1
force {KEY[3]} 1

force {KEY[3]} 0
run 10ns
force {KEY[0]} 0
run 10ns
force {KEY[0]} 1
force {KEY[3]} 1