# ✖️ Booth's Multiplication Algorithm — FPGA Implementation

![Verilog](https://img.shields.io/badge/Verilog%20HDL-8957e5?style=flat-square)
![Vivado](https://img.shields.io/badge/Xilinx%20Vivado-2ea44f?style=flat-square)
![FPGA](https://img.shields.io/badge/FPGA%20Kintex--7-0075ca?style=flat-square)
![Booth](https://img.shields.io/badge/Booth's%20Algorithm-e36209?style=flat-square)
![Bitstream](https://img.shields.io/badge/Bitstream%20Generated-238636?style=flat-square)

---

### Overview

This project implements **Booth's Multiplication Algorithm** in Verilog HDL for signed 4-bit operands, producing an 8-bit result. The design follows the complete **FPGA design flow** in Xilinx Vivado — from RTL design through synthesis, implementation, and **bitstream generation** targeting the **Kintex-7 (xc7k70tfbv676-1)** FPGA.

---

### Algorithm

Booth's algorithm reduces the number of addition/subtraction operations in signed binary multiplication using a **radix-2 recoding** scheme. It examines 2 bits at a time (current LSB + previous bit) to decide add, subtract, or shift.

```
Case {q[0], q[-1]}:
  2'b01  →  Accumulate + M   (add multiplicand)
  2'b10  →  Accumulate − M   (subtract multiplicand)
  2'b00 / 2'b11  →  Arithmetic right shift only
```

---

### Port Description

| Port | Direction | Width | Description |
|------|-----------|-------|-------------|
| clk | Input | 1-bit | System clock (15ns period — 66.67 MHz) |
| rst | Input | 1-bit | Active-high synchronous reset |
| m | Input | 4-bit signed | Multiplicand |
| q | Input | 4-bit signed | Multiplier |
| y | Output | 8-bit | Product (registered output) |

---

### FPGA Design Flow

```
RTL Design  →  Simulation  →  Synthesis  →  Implementation  →  Bitstream ✅
```

- **Target FPGA:** Kintex-7 `xc7k70tfbv676-1`
- **Clock Period:** 15 ns (66.67 MHz)
- **Constraints:** XDC with input/output delays and false path on reset

---

### File Structure

```
booth-multiplier/
├── booth_multiplication.v      ← RTL source — Booth's algorithm
├── booth_multiplication_tb.v   ← Testbench with 7 signed test cases
├── booth_constraints.xdc       ← Vivado timing constraints
├── booth_netlist.v             ← Post-synthesis netlist
├── booth_multiplication.dcp    ← Design checkpoint
├── booth_multiplication.bit    ← Generated bitstream
├── waveform.png                ← Simulation waveform
└── README.md
```

---

### Testbench — Test Cases

| m (Multiplicand) | q (Multiplier) | Expected y |
|-----------------|----------------|------------|
| +3 | +3 | +9 |
| +5 | +2 | +10 |
| +7 | +1 | +7 |
| +3 | −3 | −9 |
| −3 | +3 | −9 |
| −3 | −3 | +9 |
|  0 | +5 |  0 |

---

### Simulation Waveform

![Waveform](waveform.png)

> Waveform showing clk, rst, m, q and y signals for all signed test cases — verified in Xilinx Vivado Simulator.

---

### Learning Outcome

- Implemented signed binary multiplication using Booth's radix-2 algorithm
- Completed full FPGA design flow through bitstream generation on Kintex-7
- Applied XDC timing constraints with input/output delays & false path on reset
- Registered combinational output for proper FPGA timing closure

---

### ⏱ Timing Summary (Post-Route)

| Parameter | Value | Status |
|-----------|-------|--------|
| Clock | sys_clk | — |
| Clock Period | 15.000 ns (66.67 MHz) | — |
| WNS — Worst Negative Slack (Setup) | +4.091 ns | ✅ MET |
| TNS — Total Negative Slack | 0.000 ns | ✅ MET |
| WHS — Worst Hold Slack | +0.087 ns | ✅ MET |
| THS — Total Hold Slack | 0.000 ns | ✅ MET |
| WPWS — Worst Pulse Width Slack | +7.100 ns | ✅ MET |
| Failing Endpoints | 0 / 16 | ✅ CLEAN |
| Timing Constraints | Fully constrained | ✅ |
| Design State | Routed | ✅ |

> **All user specified timing constraints are MET** — verified on Kintex-7 `xc7k70tfbv676-1` using Vivado v2024.2

### 📐 Resource Utilization (Post-Place)

| Resource | Used | Available | Utilization |
|----------|------|-----------|-------------|
| Slice LUTs | 16 | 41,000 | 0.04% |
| Slice Registers (FF) | 8 | 82,000 | <0.01% |
| F7 Muxes (MUXF7) | 4 | 20,500 | 0.02% |
| F8 Muxes (MUXF8) | 2 | 10,250 | 0.02% |
| Bonded IOBs | 18 | 300 | 6.00% |
| Block RAM | 0 | 135 | 0.00% |
| DSPs | 0 | 240 | 0.00% |
| Global Clock Buffers (BUFG) | 1 | 32 | 3.13% |
| Total Slices Used | 6 | 10,250 | 0.06% |

### 🔧 Primitives Breakdown

| Primitive | Count | Type |
|-----------|-------|------|
| LUT6 | 14 | Look-Up Table |
| LUT4 | 3 | Look-Up Table |
| LUT2 | 1 | Look-Up Table |
| FDCE | 8 | Flip-Flop (Clock Enable + Async Reset) |
| MUXF7 | 4 | Multiplexer |
| MUXF8 | 2 | Multiplexer |
| IBUF | 10 | Input Buffer |
| OBUF | 8 | Output Buffer |
| BUFG | 1 | Global Clock Buffer |

### ⚡ Power Analysis (Post-Route)

| Parameter | Value |
|-----------|-------|
| Total On-Chip Power | 0.085 W |
| Dynamic Power | 0.003 W |
| Static Power | 0.081 W |
| Junction Temperature | 25.2 °C |
| Max Ambient Temperature | 84.8 °C |
| Thermal Resistance (TJA) | 1.9 °C/W |
| Confidence Level | Low (no simulation activity file) |

| On-Chip Component | Power (W) |
|-------------------|-----------|
| Clocks | <0.001 W |
| Slice Logic (LUTs + MUX + FF) | <0.001 W |
| Signals | <0.001 W |
| I/O | 0.002 W |
| Static | 0.081 W |

---

### 🕐 Clock Utilization (Post-Route)

| Parameter | Value |
|-----------|-------|
| Clock Name | sys_clk |
| Clock Period | 15.000 ns (66.67 MHz) |
| Clock Buffer Used | BUFGCTRL (1/32) |
| Clock Loads (FF) | 8 |
| Clock Region | X0Y0 |
| Clock Source | IBUF → BUFG → 8 FFs |
| MMCM / PLL Used | None |

---

### ✅ DRC Report Summary

| Rule | Severity | Description | Status |
|------|----------|-------------|--------|
| CFGBVS-1 | Warning | Missing CFGBVS & CONFIG_VOLTAGE property | Non-critical |
| NSTD-1 | Warning | I/O Standard not specified (18 ports) | Non-critical |
| UCIO-1 | Warning | Unconstrained port locations (18 ports) | Non-critical |

> ⚠️ All 3 DRC checks are **warnings only** — no errors or critical violations.  
> These are standard warnings for RTL simulation-focused designs without physical board pin mapping.  
> **0 DRC Errors — Design is fully routed and clean.**

---

### 🖥 RTL Schematic

![Schematic](schematic.png)

> Post-implementation schematic showing LUT6, MUXF7, MUXF8, FDCE flip-flops,  
> IBUF input buffers and OBUF output buffers — generated in Xilinx Vivado v2024.2


M.Tech ECE (VLSI Design) — NIT Hamirpur
[![LinkedIn](https://img.shields.io/badge/LinkedIn-arshadansari04-0077B5?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/arshadansari04/)
    
