# ============================================================
# booth_constraints.xdc
# Target : Kintex-7 xc7k70tfbv676-1
# Design : Booth Multiplication Algorithm
# ============================================================

# ─── Primary Clock ──────────────────────────────────────────
create_clock -period 15.000 -name sys_clk [get_ports clk]

# ─── Input Delays ───────────────────────────────────────────
set_input_delay -clock sys_clk -max 2.000 [get_ports {m[*]}]
set_input_delay -clock sys_clk -min 0.500 [get_ports {m[*]}]
set_input_delay -clock sys_clk -max 2.000 [get_ports {q[*]}]
set_input_delay -clock sys_clk -min 0.500 [get_ports {q[*]}]
set_input_delay -clock sys_clk -max 2.000 [get_ports rst]
set_input_delay -clock sys_clk -min 0.500 [get_ports rst]

# ─── Output Delays ──────────────────────────────────────────
set_output_delay -clock sys_clk -max 2.000 [get_ports {y[*]}]
set_output_delay -clock sys_clk -min 0.500 [get_ports {y[*]}]

# ─── False Path on Reset ────────────────────────────────────
set_false_path -from [get_ports rst]

# ─── DRC Waivers (no physical board) ────────────────────────

