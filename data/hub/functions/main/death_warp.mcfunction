forceload add 0 0
summon minecraft:area_effect_cloud 0 10 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["h.deathTracker"]}
tag @s add h.dying
execute as @e[tag=h.deathTracker,limit=1] run function hub:main/death_data
tag @s remove h.dying
forceload remove 0 0