# 0
Win condition (and start)

Displays timer (0 if startup)

proceeds to state 1 on key up 

displaymode = numerical

# 1
PS/2 does this funky little thing where, when a key is released, it transmits 0xF0 (key released) and then the keycode of the freshly released key.
This state exists to prevent mode 2 from grabbing that keycode as the user input when it is not

# 2
Gameplay: system generates random letter and displays it

waits for keypress from user. If same as random letter, goto stop timer and goto state 0.
If any other keycode goto state 3

displaymode = alpha

#3
Lose screen

Displays "LoSS" on 7 segment display

displaymode = alpha (switched)

goto state 1 on key release
