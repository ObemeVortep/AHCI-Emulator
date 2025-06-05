## 🕰️ Project Background

From December to February, I took a break from programming to focus on studying German — successfully passing the exam with a 163/165 score. After that, I asked myself: *"What should I build next?"* I knew that the key to staying motivated was working on something that truly inspired me.

That inspiration came from a friend who suggested a firmware project for an FPGA board with a PCIe slot.

Initially, I thought I would write a C/C++ driver for the device. But it turned out I needed to **emulate an AHCI controller**, which already has native driver support on most operating systems. This shifted the challenge into uncharted territory — SystemVerilog — a language I had never worked with before.

I had zero background in firmware or HDL. Just a rough idea and a strong desire to bring it to life.  
If you've seen my other repo, DataCollector-Translator, you'll likely notice some parallels.

Now, looking back after 3.5 months of development, the progress is insane.  
This README walks you through what was built — and why it matters.

## 💡 Overview

This repository documents a 3.5-month research and development journey:  
a full SystemVerilog implementation of a PCIe device that emulates an AHCI controller with a hidden DMA engine.  
It was built from scratch — without any prior HDL experience — and dives deep into hardware, OS internals, and memory engineering.

## 🧩 Project Structure

This project is divided into two fundamentally different parts:

### 1. 🧠 Main Firmware

This is the core firmware of the PCIe device — the part that is visible to the operating system (e.g., Windows). Its primary goal is to **fool the OS** into believing that:

- A fully functional **AHCI controller** is present.
- A single connected **SATA HDD** is attached, working properly and accessible from the system.

The entire communication flow — from PCIe enumeration to AHCI command handling — is emulated to appear legitimate to the OS and its native drivers.

---

### 2. 🕵️ Hidden DMA Engine

This is a completely separate internal module, **invisible to the OS**. It operates entirely via **DMA**, without involving the host CPU.  
Its core function is to:

- **Scan physical memory (RAM)** for specific patterns or data structures.
- **Extract and transmit** this data discreetly, without disrupting system behavior.

This engine never exposes itself to the system — no drivers, no registers, no interrupt handling — total stealth.

---

### 🧪 FT601 Debug & Output Modules

Although relatively simple compared to the two core components, the project also includes FT601-based modules:

- One used during development and debugging.
- One used in the final build to **exfiltrate results** from the hidden engine.

These modules serve as a communication bridge without relying on PCIe.

## 📚 What I Learned During This Project

I'm not going to say how many hours I spent per day on this project,  
but when I encountered a strange bug in `storahci.sys` that drove me absolutely mad,  
I worked 10–12 hours a day for 10 days straight until I finally fixed it.

Over the 3.5 months of development, I absorbed an enormous amount of knowledge.

I read well over **a thousand pages of technical literature** — which, as anyone in low-level engineering knows, is unavoidable.  
There is **virtually no real information online** about AHCI emulation — because honestly, who would ever need it?  
So I had to:

- Understand how AHCI controllers actually work.
- Combine that with how PCI Express devices operate.
- Run into obscure bugs.
- Go back to reading.
- Spend 20 hours testing.
- Only to find out I had written a `1` instead of a `0` in a register assignment.  
Yes, it happened. More than once.

Thanks to my DataCollector-Translator project, I already had a solid understanding of Windows internals — process structures, memory layout, etc.,  
which made interfacing with the OS more familiar.

---

### 🔍 Key Areas of Knowledge Gained

- **Deep understanding of how computers work**:  
  I now fully grasp how the CPU communicates with other components, the role of the motherboard, system initialization, how interrupts work, and more.

- **PCI Express architecture and device design**:  
  I understand how PCIe devices initialize, perform memory reads/writes via DMA, and how their configuration space works.  
  I also studied how PCIe packets are built on different protocol layers, how flow control works, how buffering operates, etc.

- **AHCI and SATA internals**:  
  I emulate responses to many ATA commands — sent by the OS's AHCI driver — which are routed through my pseudo-AHCI controller to a fake SATA disk.  
  It’s complicated in theory — and even worse in practice. But after hundreds of pages and long debugging hours, I figured it out.

- **Windows internals**:  
  Since I had to work directly with raw physical memory, I had to navigate virtual address spaces, resolve virtual-to-physical pointers, and more.  
  Doing this efficiently on a system with **32 GB of RAM**, and locating a small process occupying just a few megabytes, taught me a lot about Windows memory structures, paging, and process isolation.

---

### 📖 Literature That Made This Possible

- *PCI Express System Architecture* by MindShare — Part 1 & 2  
- *7 Series FPGAs Integrated Block for PCI Express v3.3 Product Guide* — Chapters 1, 2, and 3  
- *SATA AHCI Revision 1.0* by Intel — read multiple times, cover to cover  
- *ATA8-ACS* — for deep dives into SATA drive behavior  
- *SATA Gold 3.1* — for understanding AHCI–SATA interaction in depth  

---

## 🔒 Source Code Availability

Unfortunately, due to the private nature of the code, I’ve chosen not to make it publicly available.  
However, I’m more than willing to **demonstrate my ownership and deep understanding** of the project in a personal conversation.
