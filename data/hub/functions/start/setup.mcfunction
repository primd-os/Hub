team leave @a
effect give @a instant_health 1 100

clear @a
execute as @a in hub:hub run tp 0 100 0
execute in hub:hub run setworldspawn 0 100 0

execute in hub:hub run forceload add -5 -5 5 5
execute in hub:hub run fill -5 99 -5 5 99 5 black_concrete
execute in hub:hub run forceload remove -5 -5 5 5

scoreboard objectives add Hub trigger
scoreboard objectives add h.quits custom:leave_game