# Cmod A7 — LabBoard V1

**A custom FPGA expansion PCB designed for the Digilent Cmod A7-35T.**

The **LabBoard V1** is a custom-designed PCB that expands the input/output capabilities of the Digilent Cmod A7 FPGA development board.

Designed using **KiCad**, the board provides LEDs, switches, a four-digit seven-segment display, and expansion connectors for experimenting with digital logic and VHDL development.

The project aims to provide a reusable hardware platform for FPGA experimentation, prototyping, and educational projects.

## Project Status

**Hardware prototype: Assembled and undergoing validation**

The PCB has been manufactured, assembled, and tested. Most peripherals are operational, including the four-digit display, DIP switches, and push buttons.

**Known issues:**
- All eight discrete LEDs are currently non-functional. Incorrect LED polarity during assembly is the suspected cause.
- The segment E current-limiting resistor is missing from the current prototype, leaving that segment unavailable.
- Two expansion header signals have unconventional routing assignments that will be corrected in V2.

## Features

| Component | Quantity | Description |
|---|---|---|
| Discrete LEDs | 8 | GPIO-controlled LEDs |
| DIP switches | 4 | Digital inputs |
| Push buttons | 2 | Digital inputs; VHDL debouncing planned |
| Seven-segment display | 1 | Four multiplexed digits |
| Digital expansion headers | 2 | 8 signal connections each |
| Analog expansion header | 1 | 4-pin connector for analog signals |
| FPGA interface | 1 | Digilent Cmod A7-35T |

### Seven-Segment Display

The four-digit display is driven through a multiplexed architecture using external MOSFETs.

The FPGA controls the individual segment signals and selects the active digit through four common-anode control lines.

This arrangement allows the four digits to display different values through rapid time-division multiplexing.

### Digital Inputs

The LabBoard provides four DIP switches and two momentary push buttons for FPGA input.

A reusable VHDL debouncing module is planned for the push buttons.

## GPIO Pinout

The following table documents the **Cmod A7 physical PIO assignments** used by LabBoard V1.

| PIO | Signal | Description |
|---|---|---|
| 1 | `LED0` | Discrete LED 0 |
| 2 | `LED1` | Discrete LED 1 |
| 3 | `LED2` | Discrete LED 2 |
| 4 | `LED3` | Discrete LED 3 |
| 5 | `LED4` | Discrete LED 4 |
| 6 | `LED5` | Discrete LED 5 |
| 7 | `LED6` | Discrete LED 6 |
| 8 | `LED7` | Discrete LED 7 |
| 9 | `SEG_A` | Segment A |
| 10 | `SEG_B` | Segment B |
| 11 | `SEG_C` | Segment C |
| 12 | `SEG_D` | Segment D |
| 13 | `SEG_E` | Segment E |
| 14 | `SEG_F` | Segment F |
| 15 | `ANALOG_CON_1` | Analog input 1 |
| 16 | `ANALOG_CON_2` | Analog input 2 |
| 17 | `SEG_G` | Segment G |
| 18 | `SEG_DP` | Decimal point |
| 19 | `DIGI_1` | Digit 1 — common anode |
| 20 | `DIGI_2` | Digit 2 — common anode |
| 21 | `DIGI_3` | Digit 3 — common anode |
| 22 | `DIGI_4` | Digit 4 — common anode |
| 23 | `DIP_SW0` | DIP switch 0 |
| 24 | `VU` | USB voltage rail |
| 25 | `GND` | Ground |
| 26 | `DIP_SW1` | DIP switch 1 |
| 27 | `DIP_SW2` | DIP switch 2 |
| 28 | `DIP_SW3` | DIP switch 3 |
| 29 | `SP_0` | Push button 0 |
| 30 | `SP_1` | Push button 1 |
| 31 | `CON1_1` | Expansion connector 1 |
| 32 | `CON1_2` | Expansion connector 1 |
| 33 | `CON1_3` | Expansion connector 1 |
| 34 | `CON1_4` | Expansion connector 1 |
| 35 | `CON1_7` | Expansion connector 1 |
| 36 | `CON1_8` | Expansion connector 1 |
| 37 | `CON2_2` | Expansion connector 2 — V2 routing improvement planned |
| 38 | `CON1_10` | Expansion connector 1 |
| 39 | `CON2_1` | Expansion connector 2 |
| 40 | `CON1_9` | Expansion connector 1 — V2 routing improvement planned |
| 41 | `CON2_3` | Expansion connector 2 |
| 42 | `CON2_4` | Expansion connector 2 |
| 43 | `CON2_7` | Expansion connector 2 |
| 44 | `CON2_8` | Expansion connector 2 |
| 45 | `CON2_9` | Expansion connector 2 |
| 46 | `CON2_10` | Expansion connector 2 |
| 47 | `NC` | Not connected |
| 48 | `NC` | Not connected |

> **Note:** PIO 37 and PIO 40 are intentionally listed with their actual LabBoard V1 signal assignments. These are not documentation errors. Their routing will be improved in a future revision.

## Development Environment

- **PCB design:** KiCad
- **FPGA:** AMD/Xilinx Artix-7 (Cmod A7-35T)
- **Hardware description language:** VHDL
- **FPGA development:** AMD Vivado
- **Digital logic simulation:** Digital

## Planned Improvements
- [ ] Develop and validate reusable VHDL input-debouncing modules.
- [ ] Finalize the reusable four-digit display controller.
- [ ] Improve expansion connector routing in LabBoard V2.
- [ ] Document hardware tests and add demonstration photographs.

## Project Purpose

This project is part of an ongoing effort to develop practical skills in FPGA design, PCB development, digital electronics, and hardware debugging.

The LabBoard is intended to serve as a reusable platform for future projects, including custom digital logic, counters, control systems, and experimental processor architectures.

---

**LabBoard V1 — Custom FPGA Hardware Development Project, 2026**
