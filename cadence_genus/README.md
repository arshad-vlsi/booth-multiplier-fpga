# Cadence Genus Synthesis — Booth Radix-2 Multiplier

![Cadence Genus](https://img.shields.io/badge/Cadence%20Genus%2021.14-e36209?style=flat-square)
![90nm](https://img.shields.io/badge/90nm%20Slow%20Corner-0075ca?style=flat-square)
![Timing](https://img.shields.io/badge/Timing-MET%20%2B6.440ns-2ea44f?style=flat-square)

Full ASIC synthesis documentation for the Booth Radix-2 Signed Multiplier using Cadence Genus 21.14 targeting a 90 nm standard-cell library (slow corner).

---

### Synthesis Environment

| Parameter | Value |
|-----------|-------|
| Tool | Cadence Genus Synthesis Solution 21.14-s082_1 |
| Technology Library | 90 nm standard cell — slow corner |
| Operating Conditions | slow (balanced_tree) |
| Wireload Mode | enclosed |
| Area Mode | timing library |
| Generated | Oct 24 2026 — 04:19:46 |

---

### ⏱ Timing Report

**File:** `reports/timing.rpt`

| Parameter | Value |
|-----------|-------|
| Path Status | ✅ MET |
| Setup Slack (WNS) | **+6.440 ns** |
| Clock Period | 10.000 ns |
| Input Delay | 1.000 ns |
| Data-path Delay | 2.118 ns |
| Setup Uncertainty | 0.200 ns |
| Required Time | 9.558 ns |
| Startpoint | m[0] (input port, falling edge clk) |
| Endpoint | y_reg[5]/SI (rising edge clk) |

> ⚠️ **Note:** The reported data-path delay of 2.118 ns is from input port `m[0]` to the scan-input pin `y_reg[5]/SI`. This is **not confirmed as the critical register-to-register delay**. The endpoint `y_reg[5]/SI` is a scan-chain input, which may reflect scan-mode timing rather than functional-mode critical path.

**Critical Path Detail:**

| Timing Point | Cell | Delay (ps) | Arrival (ps) |
|-------------|------|------------|--------------|
| m[0] | (input arrival) | 0 | 1000 |
| g1940/Y | NOR2XL | 155 | 1155 |
| g1929/Y | NAND2XL | 159 | 1314 |
| g1916/Y | CLKXOR2X1 | 220 | 1534 |
| g1914/Y | NAND2XL | 216 | 1750 |
| g1908/Y | NOR3X1 | 192 | 1942 |
| g1907/Y | NAND2BX1 | 138 | 2080 |
| g1902/Y | NOR2XL | 56 | 2135 |
| g1900/Y | AOI21X1 | 106 | 2242 |
| g1894/CO | ADDFX1 | 258 | 2499 |
| g1889/Y | OAI22X1 | 98 | 2597 |
| g1888/Y | AOI211X1 | 161 | 2758 |
| g1887/Y | CLKINVX1 | 86 | 2844 |
| g1883/Y | NOR3X1 | 139 | 2983 |
| g1882/Y | NAND2BX1 | 135 | 3118 |
| **y_reg[5]/SI** | **SDFFRHQX1** | **0** | **3118** |

---

### 📐 Area Report

**File:** `reports/area.rpt`

| Instance | Cell Count | Cell Area | Total Area |
|----------|-----------|-----------|------------|
| booth_multiplication | 72 | 488.957 | 488.957 |

> ⚠️ Area is reported in **library area units** — not verified as µm².

---

### ⚡ Power Report

**File:** `reports/power.rpt`

| Category | Leakage (W) | Internal (W) | Switching (W) | Total (W) | % |
|----------|-------------|-------------|---------------|-----------|---|
| Register | 8.597e-07 | 2.099e-05 | 0.000 | 2.185e-05 | 55.68% |
| Logic | 1.361e-06 | 9.569e-06 | 5.511e-06 | 1.644e-05 | 41.89% |
| Clock | 0.000 | 0.000 | 9.558e-07 | 9.558e-07 | 2.44% |
| **Total** | **2.221e-06** | **3.056e-05** | **6.467e-06** | **3.925e-05** | **100%** |

- **Total Power: 39.2496 µW**
- Leakage: 5.66% — Internal: 77.86% — Switching: 16.48%

> ⚠️ Pre-layout power estimate — post-layout power may differ due to parasitic capacitances.

---

### 🔧 Cell Count Report

**File:** `reports/cell_count.rpt`

**By Cell Type:**

| Type | Instances | Area | Area % |
|------|-----------|------|--------|
| Sequential | 7 | 156.678 | 32.0% |
| Inverter | 12 | 27.248 | 5.6% |
| Logic | 53 | 305.031 | 62.4% |
| **Total** | **72** | **488.957** | **100%** |

**Key Standard Cells Used:**

| Gate | Instances | Type |
|------|-----------|------|
| CLKINVX1 | 8 | Inverter |
| NOR2XL | 7 | Logic |
| NAND2XL | 6 | Logic |
| OAI22X1 | 6 | Logic |
| NAND2BX1 | 5 | Logic |
| DFFRHQX1 | 4 | Sequential |
| OAI21X1 | 4 | Logic |
| INVXL | 4 | Inverter |
| ADDFX1 | 3 | Logic |
| AOI211X1 | 3 | Logic |
| AOI33XL | 3 | Logic |
| SDFFRHQX1 | 3 | Sequential |

---

### 🖥 Gate-Level Schematic (Cadence Genus)

![Genus GUI](screenshots/genus_gui.png)

> Post-synthesis gate-level schematic generated in Cadence Genus 21.14 showing mapped standard cells on 90 nm slow-corner library.

---

### Simulation Waveform (Gate-Level)

![Waveform](waveforms/simulation_waveform.png)

> Gate-level simulation waveform showing clk, rst, m[3:0], q[3:0], signed(y_comb) and signed(y) — verified using Cadence SimVision after synthesis.

---

### Files in This Directory

```
cadence_genus/
├── README.md                        ← This file
├── reports/
│     ├── area.rpt                   ← Genus area report
│     ├── power.rpt                  ← Genus power report
│     ├── timing.rpt                 ← Genus timing report
│     └── cell_count.rpt             ← Genus cell count report
├── netlist/
│     └── genus_gate_netlist.v       ← Synthesized gate-level netlist
├── screenshots/
│     └── genus_gui.png              ← Genus GUI schematic
└── waveforms/
      └── simulation_waveform.png    ← Gate-level simulation waveform
```

---

### Disclaimers

- Area units are reported from the timing library and have **not been verified as µm²**
- The 2.118 ns data-path delay ends at `y_reg[5]/SI` — **not confirmed as the critical functional register-to-register path**
- Power estimate is **pre-layout** — post-layout power may differ
- Timing results are for the **slow corner** only
  
