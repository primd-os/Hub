tag @s add hub.dying
execute as @e[tag=hub.deathTracker,limit=1] run function hub:main/death/data
tag @s remove hub.dying