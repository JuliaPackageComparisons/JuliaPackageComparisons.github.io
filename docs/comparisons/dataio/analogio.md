+++
title = "Analog I/O"
+++

# Analog I/O

@def maxtoclevel=3
\toc

## Introduction
Analog I/O means setting and measuring analog quantities, such as a voltage or current. Analog input is more commonly known as Data AQuisition (DAQ), and analog I/O is sometimes referred to as Data AQuisition and Control (DAQC).

Analog I/O is very important in a laboratory to efficiently change certain variables, perhaps while measuring some other variable. Julia has some packages for analog I/O, which are collected on this page. Most packages are aimed at specific hardware (such as the Raspberry Pi) or specific manufacturers (such as National Instruments).

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
As a special case, the Raspberry Pi has capabilities for analog IO, via the 40-pin GIPO. This can be used with periphiral Hardware Attached on Top (HAT) to compose a decent analog I/O device.

There are two packages available, with slightly differing capailites
{{star_history PiGPIO BaremetalPi}}

#### PiGPIO.jl
{{badge PiGPIO}}
This is the oldest and most starred option, with the best support. Using the pigpio daemon for the heavy lifting, it supports all the capabilities of the GPIO, which is the main reason to prefer this package over [BaremetalPi.jl](#baremetalpijl). It is a translation of [the python package with the same purpose](https://abyz.me.uk/rpi/pigpio/python.html).

#### BaremetalPi.jl
{{badge BaremetalPi}}
This package allows you "to access Raspberry Pi peripherals without requiring external libraries". The motivation is that "avoiding middlewares can help to decrease latency for real-time applications". Note that this package should be concidered in alpha, and has only been tested against the Raspberry Pi W Zero.