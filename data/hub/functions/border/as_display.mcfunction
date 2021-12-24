execute store result entity @s Pos[0] double 0.0025 run scoreboard players get @s hub.borderSize
execute store result entity @s Pos[2] double 0.005 run scoreboard players get @s hub.borderSize
execute at @s run particle minecraft:dust 1 0 0 1000 0 0 ~ ~ 255 0 0.1 100 force @a[x=0]
execute store result entity @s Pos[2] double -0.005 run scoreboard players get @s hub.borderSize
execute at @s run particle minecraft:dust 1 0 0 1000 0 0 ~ ~ 255 0 0.1 100 force @a[x=0]

execute store result entity @s Pos[0] double 0.005 run scoreboard players get @s hub.borderSize
execute store result entity @s Pos[2] double 0.0025 run scoreboard players get @s hub.borderSize
execute at @s run particle minecraft:dust 1 0 0 1000 ~ 0 0 0 255 ~ 0.1 100 force @a[x=0]
execute store result entity @s Pos[0] double -0.005 run scoreboard players get @s hub.borderSize
execute at @s run particle minecraft:dust 1 0 0 1000 ~ 0 0 0 255 ~ 0.1 100 force @a[x=0]
execute at @s run tp @s 0 1000 0