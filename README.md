# Processor Architecture & Interfacing — Assignments

This repository contains my **Processor Architecture & Interfacing (PAI)** assignments and practical programs implemented using **32-bit x86 NASM Assembly Language**.

The programs cover fundamental processor-level operations, arithmetic instructions, array processing, ASCII conversion, Linux system calls, and basic Assembly programming concepts.

## 📚 Programs Included

| No. | Program            | Description                                               |
| --: | ------------------ | --------------------------------------------------------- |
|   1 | **Hello World**    | Displays a Hello World message using Linux system calls   |
|   2 | **Addition**       | Adds two numbers and displays the result                  |
|   3 | **Subtraction**    | Subtracts one number from another and displays the result |
|   4 | **Multiplication** | Multiplies two numbers and displays the result            |
|   5 | **Division**       | Divides two numbers and displays the quotient             |
|   6 | **Array**          | Calculates and displays the sum of elements in an array   |

## 🛠️ Technologies Used

* **Assembly Language**
* **NASM (Netwide Assembler)**
* **x86 Architecture**
* **Linux System Calls**
* **VS Code / Terminal**

## 📁 Repository Structure

```text
SY-2_SEM-3_Processor-Architecture-and-Interfacing_Assignments/
│
├── HelloWorld.asm
├── Addition.asm
├── Subtraction.asm
├── Multiplication.asm
├── Division.asm
├── Array.asm
│
└── README.md
```

## ⚙️ How to Run

These programs use **NASM syntax** and the Linux `int 0x80` system-call interface.

### 1. Assemble the program

```bash
nasm -f elf32 ProgramName.asm -o ProgramName.o
```

### 2. Link the object file

```bash
ld -m elf_i386 ProgramName.o -o ProgramName
```

### 3. Run the program

```bash
./ProgramName
```

For example:

```bash
nasm -f elf32 Addition.asm -o Addition.o
ld -m elf_i386 Addition.o -o Addition
./Addition
```

## 🧠 Concepts Covered

* Assembly program structure
* `.data`, `.bss`, and `.text` sections
* CPU registers
* Arithmetic instructions
* `MOV`, `ADD`, `SUB`, `MUL`, and `DIV`
* Loops and array traversal
* ASCII conversion
* Linux system calls
* Program termination
* Basic x86 Assembly programming

## 🎯 Purpose

This repository is maintained as part of my **Processor Architecture & Interfacing coursework** to practice low-level programming and understand how arithmetic operations, memory, registers, and system calls work at the processor level.

---

### 👨‍💻 Author

**Prashant Vivek Dubey**
B.Tech — Computer Science & Engineering

[![GitHub](https://img.shields.io/badge/GitHub-prashantVdubey-black?logo=github)](https://github.com/prashantVdubey)
