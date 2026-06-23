# ⚡ Booth's Radix-2 Multiplier — Full FPGA Implementation

<div align="center">

![Status](https://img.shields.io/badge/Status-Complete-brightgreen?style=for-the-badge) ![Tool](https://img.shields.io/badge/Vivado-2024.2-blue?style=for-the-badge) ![Device](https://img.shields.io/badge/Kintex--7-FPGA-orange?style=for-the-badge) ![Language](https://img.shields.io/badge/Verilog-HDL-yellow?style=for-the-badge)

</div>

Complete RTL-to-Bitstream FPGA implementation of Booth's Radix-2 signed multiplication on **Kintex-7 (xc7k70tfbv676-1)** | **Vivado 2024.2** | **66.67 MHz**

| Parameter | Value | Status |
|:---|:---:|:---:|
| Slice LUTs | 16 / 41,000 | ✅ < 1% |
| Slice Registers | 7 / 80,000 | ✅ < 1% |
| WNS (Setup) | +4.092 ns | ✅ PASS |
| WHS (Hold) | +0.084 ns | ✅ PASS |
| Total Power | 0.085 W | ✅ |
| Critical Path | 4.113 ns | ✅ |

**Flow:** RTL → Simulation → Synthesis → P&R → Timing → Bitstream ✅

**Repo:** `rtl/` `tb/` `constraints/` `reports/` `bitstream/`

**Clone:** `git clone https://github.com/arshad04022002/booth-multiplier-fpga`

<div align="center">⭐ Star if helpful | Made with ❤️ by <a href="https://github.com/arshad04022002">Arshad</a></div>
