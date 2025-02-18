# 2-Bit FPGA Arithmetic Logic Unit (ALU)

## Overview
This project implements a 2-bit Arithmetic Logic Unit (ALU) using Verilog HDL. The ALU performs basic arithmetic and logical operations, including addition, subtraction, multiplication, AND, OR, and XOR. It is designed to be synthesized on **Cyclone V FPGA** or any compatible FPGA board.

## Features
- **2-bit Operations:** Supports the following operations:
  - Addition
  - Subtraction
  - Multiplication
  - AND, OR, XOR (Logical operations)
- **Multiplexer-Based Design:** Uses a multiplexer to select the operation based on control inputs.
- **Modular Architecture:** Organized into individual Verilog modules for scalability and maintainability.
- **FPGA Compatibility:** Synthesized and tested for Cyclone IV FPGA, but adaptable to other FPGA platforms.
- **Simulation and Verification:** Verified using testbenches to ensure correct functionality for all operations.

## Technology Stack
- **Hardware Description Language:** Verilog HDL
- **FPGA Platform:** Cyclone V FPGA or any compatible FPGA board
- **Development Environment:** Quartus Prime Software


## How It Works
- **Inputs:**
  - Two 2-bit operands (`A`, `B`)
  - Clock signal (Switches operation mode every cycle)
- **Outputs:**
  - 2-bit result (`Out`)
  - 1-bit Carry-Out (`Cout`) for arithmetic operations
- **Supported Operations:**
  - AND
  - OR
  - XOR
  - Addition
  - Subtraction
  - Multiplication

## Installation and Simulation
1. **Clone the Repository:**
   ```bash
   git clone https://github.com/motawe3theking/2-Bit-FPGA-ALU.git
   cd 2-Bit-FPGA-ALU
