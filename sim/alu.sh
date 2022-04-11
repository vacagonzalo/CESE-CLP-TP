ghdl -a ../src/alu_tb.vhd ../src/alu.vhd
ghdl -s ../src/alu_tb.vhd ../src/alu.vhd
ghdl -e alu_tb
ghdl -r alu_tb --vcd=alu_tb.vcd --stop-time=1000ns
gtkwave alu_tb.vcd
