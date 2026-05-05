# 🔷 FPGA LED Blinker (Artix-7 + Vivado)

## 📌 Overview

This project implements a simple **LED blinking design** on an Artix-7 FPGA using Verilog HDL.
It demonstrates the fundamental FPGA design flow including synthesis, implementation, and bitstream generation using Xilinx Vivado.

The design uses a **differential clock input** and toggles an LED at a human-visible rate using a counter-based clock divider.

---

## 🧠 Key Concepts

* FPGA design using Verilog HDL
* Differential clock handling (`IBUFDS`)
* Clock division using counters
* XDC constraints (pin mapping)
* Vivado design flow

---

## ⚙️ Hardware Requirements

* Artix-7 FPGA board (e.g., VC707 / KC705 / similar)
* USB cable (for programming)
* Onboard LED

---

## 💻 Software Requirements

* Xilinx Vivado (recommended version: 2020.2 or later)

---

## 📁 Project Structure

```
fpga-led-blinker/
│── src/
│   └── led_blinker.v
│── constraints/
│   └── constraints.xdc
│── README.md
```

---

## 🔧 Design Description

### 🟢 Verilog Module

The design uses:

* Differential clock input (`SYSCLK_P`, `SYSCLK_N`)
* Clock buffer (`IBUFDS`)
* Counter to divide clock frequency
* LED toggling logic

---

### 🧾 Code (led_blinker.v)

```verilog
module led_blinker(
    input wire SYSCLK_P,
    input wire SYSCLK_N,
    output reg led = 0
);

    wire clk;

    // Differential clock buffer
    IBUFDS clk_buf (
        .I(SYSCLK_P),
        .IB(SYSCLK_N),
        .O(clk)
    );

    reg [26:0] counter = 0;

    always @(posedge clk) begin
        counter <= counter + 1;

        if (counter == 100_000_000) begin
            led <= ~led;
            counter <= 0;
        end
    end

endmodule
```

---

### 📍 Constraints (constraints.xdc)

```xdc
## Differential Clock
set_property PACKAGE_PIN R3 [get_ports SYSCLK_P]
set_property IOSTANDARD LVDS_25 [get_ports SYSCLK_P]

set_property PACKAGE_PIN P3 [get_ports SYSCLK_N]
set_property IOSTANDARD LVDS_25 [get_ports SYSCLK_N]

## LED
set_property PACKAGE_PIN M26 [get_ports led]
set_property IOSTANDARD LVCMOS33 [get_ports led]
```

---

## ▶️ How to Run

1. Open Vivado
2. Create a new RTL project
3. Add `led_blinker.v`
4. Add `constraints.xdc`
5. Run:

   * Synthesis
   * Implementation
   * Generate Bitstream
6. Open Hardware Manager
7. Program the FPGA

---

## 💡 Expected Output

The onboard LED will blink approximately once per second.


---


---

## 📚 Learning Outcome

This project serves as a foundational step toward:

* Advanced FPGA development
* Digital system design
* High-performance computing applications





---
