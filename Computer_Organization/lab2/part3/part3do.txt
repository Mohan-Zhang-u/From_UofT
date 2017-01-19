# Set the working dir, where all compiled Verilog goes.
vlib work

# Compile all verilog modules in mux.v to working dir;
# could also have multiple verilog files.
vlog lab2part3.v

# Load simulation using mux as the top level simulation module.
vsim lab2part3

# Log all signals and add some signals to waveform window.
log {/*}
# add wave {/*} would add all items in top level simulation module.
add wave {/*}

# reset block
force {SW [7]} 0
force {SW [6]} 0
force {SW [5]} 0
force {SW [4]} 0
force {SW [3]} 0
force {SW [2]} 0
force {SW [1]} 0
force {SW [0]} 0
force {KEY [2]} 0
force {KEY [1]} 0
force {KEY [0]} 0

run 10ns

# first test case0  result 14 0001 0100
force {SW [7]} 0
force {SW [6]} 1
force {SW [5]} 1
force {SW [4]} 0
force {SW [3]} 1
force {SW [2]} 1
force {SW [1]} 0
force {SW [0]} 1
force {KEY [2]} 1
force {KEY [1]} 1
force {KEY [0]} 1

run 10ns

# second test case0 result 1b 0001 1011 
force {SW [7]} 1
force {SW [6]} 1
force {SW [5]} 1
force {SW [4]} 0
force {SW [3]} 1
force {SW [2]} 1
force {SW [1]} 0
force {SW [0]} 0
force {KEY [2]} 1
force {KEY [1]} 1
force {KEY [0]} 1

run 10ns

# first test case1  result 14 0001 0100
force {SW [7]} 0
force {SW [6]} 1
force {SW [5]} 1
force {SW [4]} 0
force {SW [3]} 1
force {SW [2]} 1
force {SW [1]} 0
force {SW [0]} 1
force {KEY [2]} 1
force {KEY [1]} 1
force {KEY [0]} 0

run 10ns

# second test case1 result 1b 0001 1011
force {SW [7]} 1
force {SW [6]} 1
force {SW [5]} 1
force {SW [4]} 0
force {SW [3]} 1
force {SW [2]} 1
force {SW [1]} 0
force {SW [0]} 0
force {KEY [2]} 1
force {KEY [1]} 1
force {KEY [0]} 0


# only test case2 result 1110 1010
force {SW [7]} 0
force {SW [6]} 1
force {SW [5]} 1
force {SW [4]} 0
force {SW [3]} 1
force {SW [2]} 1
force {SW [1]} 0
force {SW [0]} 0
force {KEY [2]} 1
force {KEY [1]} 0
force {KEY [0]} 1

run 10ns

# first test case3 result 0000 0001
force {SW [7]} 0
force {SW [6]} 1
force {SW [5]} 0
force {SW [4]} 0
force {SW [3]} 0
force {SW [2]} 0
force {SW [1]} 0
force {SW [0]} 0
force {KEY [2]} 1
force {KEY [1]} 0
force {KEY [0]} 0

run 10ns

# second test case3 result 0000 0000
force {SW [7]} 0
force {SW [6]} 0
force {SW [5]} 0
force {SW [4]} 0
force {SW [3]} 0
force {SW [2]} 0
force {SW [1]} 0
force {SW [0]} 0
force {KEY [2]} 1
force {KEY [1]} 0
force {KEY [0]} 0

run 10ns

# fisrt test case4 0000 0000
force {SW [7]} 0
force {SW [6]} 1
force {SW [5]} 1
force {SW [4]} 1
force {SW [3]} 1
force {SW [2]} 1
force {SW [1]} 1
force {SW [0]} 1
force {KEY [2]} 0
force {KEY [1]} 1
force {KEY [0]} 1

run 10ns

# second test case4 result 0000 0001
force {SW [7]} 1
force {SW [6]} 1
force {SW [5]} 1
force {SW [4]} 1
force {SW [3]} 1
force {SW [2]} 1
force {SW [1]} 1
force {SW [0]} 1
force {KEY [2]} 0
force {KEY [1]} 1
force {KEY [0]} 1

run 10ns

# first test case5 result 1010 0110
force {SW [7]} 1
force {SW [6]} 0
force {SW [5]} 1
force {SW [4]} 0
force {SW [3]} 0
force {SW [2]} 1
force {SW [1]} 1
force {SW [0]} 0
force {KEY [2]} 0
force {KEY [1]} 1
force {KEY [0]} 0

run 10ns

# second test case5 result 0001 1000
force {SW [7]} 0
force {SW [6]} 0
force {SW [5]} 0
force {SW [4]} 1
force {SW [3]} 1
force {SW [2]} 0
force {SW [1]} 0
force {SW [0]} 0
force {KEY [2]} 0
force {KEY [1]} 1
force {KEY [0]} 0

run 10ns