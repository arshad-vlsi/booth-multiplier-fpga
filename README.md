# Booth's Radix-2 Multiplier — Full FPGA Implementation

![Status](https://img.shields.io/badge/Status-Complete-brightgreen)
![Tool](https://img.shields.io/badge/Tool-Vivado%202024.2-blue)
![Device](https://img.shields.io/badge/Device-Kintex--7-orange)
![Language](https://img.shields.io/badge/Language-Verilog-yellow)

## Overview
Complete RTL-to-Bitstream FPGA implementation of signed Booth's
Radix-2 multiplication algorithm on Xilinx Kintex-7 (xc7k70tfbv676-1)
using Vivado 2024.2.

## Tools & Target
| Item     | Details                   |
|----------|---------------------------|
| Tool     | Xilinx Vivado 2024.2      |
| Device   | Kintex-7 xc7k70tfbv676-1 |
| Language | Verilog HDL               |
| Clock    | 66.67 MHz (15ns period)   |

## FPGA Design Flow

## Results Summary
| Parameter       | Value       |
|-----------------|-------------|
| Slice LUTs      | 16 (<1%)    |
| Slice Registers | 7  (<1%)    |
| Clock Frequency | 66.67 MHz   |
| WNS (Setup)     | +4.092 ns ✅|
| WHS (Hold)      | +0.084 ns ✅|
| Total Power     | 0.085 W     |

## Critical Path
| Component   | Delay     |
|-------------|-----------|
| Logic Delay | 2.710 ns  |
| Route Delay | 1.403 ns  |
| Slack       | +4.092 ns |

## Repository Structure
