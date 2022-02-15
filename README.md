# 3-bldc
3-phase brushless DC motor controller

## Features:
- controls 3-phase BLDC motor
- synchronization using opto-sensors

## Arduino peripherals usage:
- Timer0 - PWM
- Timer1 - generic timer, phase detection
- PB0:5 - phase output
    - PB0: phase 1 - high
    - PB1: phase 2 - high
    - PB2: phase 3 - high
    - PB3: phase 1 - low
    - PB4: phase 2 - low
    - PB5: phase 3 - low
- PC0/PCINT8 - ~FAULT - overcurrent detection
- PC3/ADC3 - output current measurement
- PD0:1 - serial communication
- PD2/INT0 = (zero angle = home position) detection (triggered by both edges)
- PD3/INT1 = step sensor A
- PD4 = step sensor B
- PD5 = OC0B = PWM output



## Issues:
- opto-sensor feedback is currently amplified by operating amplifiers.
  Unfortunately, these devices should operate on higher voltage, so 
  amplification is not so stable and produces flicking.
  Solution: signal from opto-sensors should be amplified and
  conditioned by CMOS invertor based schmitt trigger.

## TODO:
- rotation feedback could be derived from back-EMF.
- maximum speed, acceleration measurements
- use avrm modules for usart communication and text formating (comf)
