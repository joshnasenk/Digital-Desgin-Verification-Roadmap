
<div align="center">

# Digital Design & Verification: 0 → Pro Roadmap

![SystemVerilog](https://img.shields.io/badge/Language-SystemVerilog-green)
![Verification](https://img.shields.io/badge/Verification-UVM-blue)
![Status](https://img.shields.io/badge/Status-Active-orange)

**The complete journey to mastering Digital VLSI Design, SystemVerilog Verification, UVM, Synthesis, and SoC Architecture.**



</div>

---

##  Overview

This repository is structured like the **ECE version of LeetCode**—100+ real hardware engineering problems solved end-to-end with RTL, Testbenches, Assertions, Coverage, Waveforms, Protocols, and Real-world Projects.

**The Goal:** Become elite in Digital Design + Verification Engineering, moving from fundamentals → industry-level → research-level capability.

###  What’s Inside
*  **100+ RTL + Verification Implementations**
*  **Fully Synthesizable** SystemVerilog / Verilog designs
*  **Self-Checking** & constrained-random testbenches
*  **Assertions (SVA)** and Functional Coverage
*  **UVM Components** & reusable verification environments
*  **Industry Protocols** (SPI, I2C, UART, APB, AXI)
*  **Synthesis Reports**, Timing Analysis, and Waveforms

---

##  Repository Structure

This repo is intentionally structured like a "train-to-pro" course, not just a code dump.

```text
digital-design-verification-roadmap/
│── 00-basic/              # Combinational logic & simple ALUs
│── 01-sequential/         # FSMs, Counters, Shift Registers
│── 02-fifo/               # Sync/Async FIFOs & CDC
│── 03-verification/       # SV-TB, Randomization, SVA
│── 04-protocols/          # SPI, I2C, UART, APB, AXI-Lite
│── 05-uvm/                # Complete UVM Agents, Envs, Tests
│── 06-synthesis-timing/   # Constraints (SDC), STA reports
│── 07-big-projects/       # RISC-V, DMA, AES, Cache Controller
│── waves/                 # Screenshots of VCDs & GTKWave results
│── README.md
└── roadmap.xlsx
````

-----

##  Learning Philosophy

> **Hardware Engineering Mastery = Design + Verification + Timing + Debugging**

Every module in this repository includes:

1.  **Clean RTL Design:** Optimized for area and power.
2.  **Verification Strategy:** How do we break this design?
3.  **Testbench Architecture:** Scalable TB structure.
4.  **Results:** Waveforms and coverage reports.

-----



| Level | Focus Area |
| :---: | :---: |
| **00** | Combinational Basics  |
| **01** | Sequential Logic & FSMs |
| **02** | FIFO Architectures & CDC |
| **03** | Verification Fundamentals (SV)  |
| **04** | Protocols & Bus Interfaces |
| **05** | UVM Methodology |
| **06** | Synthesis & Timing (STA)  |
| **07** | Major Hardware Projects  |

-----

##  Tools & Stack

| Category | Tools / Languages |
| :--- | :--- |
| **HDL** | SystemVerilog, Verilog |
| **Simulation** | Questasim, VCS, Icarus Verilog |
| **Verification** | SV-TB, SVA (Assertions), UVM 1.2 |
| **Synthesis & STA** | Cadence Genus, Design Compiler, Vivado |
| **Waveforms** | SimVision, GTKWave, DVE |
| **Docs** | Markdown, Draw.io |

-----

##  Topics Covered

### **Design & Architecture**

  * FSM Design Patterns (Moore/Mealy/Look-ahead)
  * Parameterized Reusable Modules
  * FIFOs (Synchronous + Asynchronous)
  * CDC (Clock Domain Crossing) Synchronizers
  * Bus Protocols (AXI, APB, SPI, I2C, UART)

### **Verification & Methodology**

  * Constrained-Random Verification (CRV)
  * Functional & Code Coverage
  * SVA (SystemVerilog Assertions)
  * UVM Agents, Monitors, Scoreboards, Sequences
  * Formal Verification Basics

-----

##  High-Impact Projects

| Project | Description |
| :--- | :--- |
| **5-Stage RISC-V CPU** | Pipelined processor with hazard detection and forwarding. |
| **AXI-Lite Peripheral** | Custom IP with a complete UVM environment. |
| **AES Encryption Engine** | Hardware implementation of AES-128/256. |
| **DMA Controller** | Direct Memory Access engine with scatter-gather support. |
| **Dual-Core Cache** | L1/L2 Cache system with coherency protocols (MESI). |
| **APB-Based SoC** | Integration of peripherals on a standard bus. |

------

##  Contributing & Contact

This repo is open for learning and collaboration. If you want to collaborate on advanced verification or RISC-V hardware systems, reach out\!

**Support:**
If you find this repo useful, please **Star** ⭐ the repository and share it with other engineers building real hardware.

```bash
git clone https://github.com/joshnasenk/digital-design-verification-roadmap.git

```

**License:** Educational / Open-Source


