# Twiddle_factors_for_ML-KEM

# Area-Efficient Twiddle Factor Design for NTT/INTT Hardware

This repository contains the Verilog/HDL implementation of an **area-efficient twiddle factor computation unit** for the **Number Theoretic Transform (NTT)** and **Inverse NTT (INTT)** used in lattice-based post-quantum cryptography (e.g., **CRYSTALS-Kyber**).  
The design significantly reduces **on-chip memory utilization** while maintaining efficient computation.

---

## Project Overview
- **Problem:**  
  Traditional NTT/INTT implementations rely on storing large sets of precomputed *twiddle factors* in ROM, which increases hardware resource usage.  
- **Solution:**  
  We propose **two-fold** and **four-fold** twiddle factor computation techniques that exploit mathematical relationships between factors to reduce ROM size.  
- **Impact:**  
  Achieves **40.16% (two-fold)** and **56.69% (four-fold)** memory savings compared to conventional approaches, without increasing latency.

---

## Features
- Supports **radix-4 NTT/INTT butterfly architecture**.  
- Implements **two-fold** and **four-fold computation units**.  
- Reduces precomputed twiddle factors from **254 → 148 (+4)** (two-fold) and **254 → 106 (+4)** (four-fold).  
- Verified using **Xilinx Vivado** simulations and synthesized on **Xilinx Artix-7 FPGA**.  
- Integrates with **Kyber Digital Signal Processing (K-DSP)** as the modular multiplication unit.

---

## Tools & Technologies
- **Languages:** Verilog (HDL)  
- **Tools:** Xilinx Vivado, FPGA Synthesis  
- **Platform:** Xilinx Artix-7 FPGA  
- **Modules:** NTT/INTT Butterfly, Modular Multiplication (K-DSP), Twiddle Factor Computation Units  

---

## Resource Utilization (Artix-7 FPGA)

| Design              | LUTs | FFs | Slices | Memory Saving |
|---------------------|------|-----|--------|---------------|
| Conventional (ROM)  | 254  | –   | –      | 0%            |
| Two-Fold Unit       | 113  | 97  | 301    | 40.16%        |
| Four-Fold Unit      | 220  | 111 | 473    | 56.69%        |

---

## Publication
This work resulted in the paper:  
**“Area Efficient Twiddle Factor Design for NTT/INTT Hardware Implementation”**  
*Shayan Ahmad, Shreya Reddy B R, Aditi Chandrakar, Jawar Singh*  
IIT Patna, QTrino Lab.  

---

## Future Work
- Extend to other lattice-based PQC schemes beyond **CRYSTALS-Kyber**.  
- Explore integration into **crypto-processors**.  
- Optimize further for **high-throughput ASIC implementations**.  

## 📂 Repository Structure
