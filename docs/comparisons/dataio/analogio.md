+++
title = "Analog I/O"
+++

# Analog I/O

@def maxtoclevel=3
\toc

## Introduction
Analog I/O means setting and reading analog quantities, such as a voltage or current. Analog input is more commonly known as Data AQuisition (DAQ), and analog I/O is sometimes referred to as Data AQuisition and Control (DAQC).

Analog I/O is very important in a laboratory to efficiently change certain variables, perhaps while measuring some other variable. Julia has some packages for analog I/O, which are collected on this page. Most packages are aimed at specific hardware (such as the Raspberry Pi) or specific manufacturers (such as National Instruments, or NI).

## Overview
This section is still barely written. If you want to help out, see the message at the bottom of the page!

{{star_history NIDAQ LabJack RedPitayaDAQServer DashDaq}}

## Packages
### NIDAQ.jl
{{ badge NIDAQ }}

### LabJack.jl
{{badge LabJack }}

### RedPitayaDAQServer.jl
{{badge RedPitayaDAQServer }}

### DashDaq.jl
{{badge DashDaq }}

### Raspberry Pi
As a special case, the Raspberry Pi has capabilities for analog IO
{{star_history PiGPIO BaremetalPi}}

#### PiGPIO.jl
{{badge PiGPIO}}

#### BaremetalPi.jl
{{badge BaremetalPi}}