# ECE2029 Final Project
A reaction speed game using the Baysis 3 board's USB HID capabilitites

Created by Jacob Ellington & Ansel Chang


## Compatability
Developed for the Baysis 3 board on Vivado 2021.2.
Does **not** work with USB-C keyboards through a C-to-A adapter!!

## Progress
All systems are a go! project is ready.
- HID: Complete
- Keyboard Wrapper: Complete
- Letter 7 segment: Complete
- Timer system: Complete
- Timer display : Complete
- Status output: Complete
- game loop: Complete

## Known Issues
Sometimes for whatever reason we don't get `0xF0` (key up) from the keyboard which causes the main FSM to get stuck in its transitory state (1). To address this, state 1 will force a transition to whatever `target` was set to after about 1 second to prevent getting stuck. This, however, can cause the board to fail to enter a win/loss state or erroniously enter a win/loss state. Just press any key to reset and the game will continue as normal.
