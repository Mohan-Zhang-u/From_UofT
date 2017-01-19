# Set the working dir, where all compiled Verilog goes.
vlib work

# Compile all verilog modules in mux.v to working dir;
# could also have multiple verilog files.
vlog lab2part2.v

# Load simulation using mux as the top level simulation module.
vsim lab2part2

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

run 10ns

# c_in0 + 0001 + 0001 = 0010 c_out 0
force {SW[0]} 1
force {SW[1]} 0 
force {SW[2]} 0 
force {SW[3]} 0 
force {SW[4]} 1 
force {SW[5]} 0 
force {SW[6]} 0 
force {SW[7]} 0 
force {SW[8]} 0 

run 10ns

# c_in0 + 0101 + 0001 = 0110 c_out 0
force {SW[0]} 1
force {SW[1]} 0 
force {SW[2]} 1 
force {SW[3]} 0 
force {SW[4]} 1 
force {SW[5]} 0 
force {SW[6]} 0 
force {SW[7]} 0 
force {SW[8]} 0 

run 10ns

# c_in0 + 1001 + 1001 = 0010 c_out 1
force {SW[0]} 1
force {SW[1]} 0 
force {SW[2]} 0 
force {SW[3]} 0 
force {SW[4]} 1 
force {SW[5]} 0 
force {SW[6]} 0 
force {SW[7]} 0 
force {SW[8]} 0 

run 10ns

# c_in1 + 1001 + 1001 = 0011 c_out 0
force {SW[0]} 1
force {SW[1]} 0 
force {SW[2]} 0 
force {SW[3]} 0 
force {SW[4]} 1 
force {SW[5]} 0 
force {SW[6]} 0 
force {SW[7]} 0 
force {SW[8]} 1 

run 10ns


# c_in1 + 1111 + 1111 = 1111 c_out 1
force {SW[0]} 1
force {SW[1]} 1 
force {SW[2]} 1 
force {SW[3]} 1 
force {SW[4]} 1 
force {SW[5]} 1 
force {SW[6]} 1 
force {SW[7]} 1 
force {SW[8]} 1 

run 10ns

# c_in0 + 1111 + 1111 = 1110 c_out 1
force {SW[0]} 1
force {SW[1]} 1 
force {SW[2]} 1 
force {SW[3]} 1 
force {SW[4]} 1 
force {SW[5]} 1 
force {SW[6]} 1 
force {SW[7]} 1 
force {SW[8]} 0

run 10ns

