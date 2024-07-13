# SMW-NES-Disassembly
This is a very WIP hack of the disassembly of the unlicensed Dendy port of SMW. We have a [Discord](https://discord.gg/3rJSuzqzmE) if you want to assist with the disassembly, documentation or modifications.
Updates to this project are likely to be quite slow due to time and motivation but it is being worked on.

# How to assemble
Run "assemble.bat" .\
(The assembler used can be found [here](https://github.com/parasyte/asm6).)

# Current WIP task:
These changes are very early in development and leave the game unstable: .\
New player animation routines, data format, data, sprites and sprite mappings are being worked on. This is a fairly involved modification and will take some time .\
A changelog will be included soon 

# Known Issues:
Known issues with current modifications are: .\
Riding Yoshi is a garbled mess and crashes the game: Incompatible animation data with new routines + bad pointers, will be fixed after other bugs .\
Some sprites are garbled: incomplete sprite mapping data, will be fixed soon .\
Animation timings are too fast/slow: timing data needs tuning, will fix once speed controlled animations are implemented .\
Mario's cape is on backwards: cape code isn't updated to refect new player sprite routines .\
Mario doesn't go behind the background when entering a pipe: not implemented layer swapping yet .\
An animation is missing or weird: animation data is still WIP, will be fixed soon .\
Bonus Room has garbled tiles: tileset needs to be re-pointed, Mario CHR update overwrote it .\
Losing a powerup crashes the game: Powerup change animation is bad? .\
Invincibility animation is garbled and freezes the game: same as above, both use a flickering frame effect .\
Cape Mario doesn't animate: unsure of exact cause

# To-do:
-General optimisation to the engine, this thing is slow and inefficient in many ways .\
-fix new missing collision issue with some bosses .\
-fix Yoshi Coin bug .\
-fix fireball cape switch crash .\
-fix weirdness with grabbing onto edges of fences .\
-replace physics routines (big task) 

-Better document some of the collision and object code.\
-Finish fixing the labels, cleaning, and organizing the music ASM. As of right now, they're extremely messy.
