tag @s add h.dying
execute as @e[tag=h.deathTracker,limit=1] run function hub:main/death/data
tag @s remove h.dying