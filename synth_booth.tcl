
# Load 90 nm technology library
read_lib /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib

# Read RTL design
read_hdl /home/arshad/Desktop/Arshad/project2/booth_multiplication.v

# Elaborate top module
elaborate booth_multiplication

# Check design
check_design -unresolved

# Read timing constraints
read_sdc /home/arshad/Desktop/Arshad/project2/booth_multiplication.sdc

# Synthesis
syn_gen
syn_map
syn_opt

# Reports
report area
report gates
report timing
report power

# Write synthesized netlist
write_hdl > /home/arshad/Desktop/Arshad/booth_multiplication_synth.v


report area > /home/arshad/Desktop/Arshad/project2/reports/area.rpt

report power > /home/arshad/Desktop/Arshad/project2/reports/power.rpt

report gates > /home/arshad/Desktop/Arshad/project2/reports/cell_count.rpt

report timing > /home/arshad/Desktop/Arshad/project2/reports/timing.rpt
