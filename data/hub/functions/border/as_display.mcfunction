execute store result entity @s Pos[0] double 0.0025 run scoreboard players get @s hub.borderSize
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s hub.borderCeiling
execute store result entity @s Pos[2] double 0.005 run scoreboard players get @s hub.borderSize
execute at @s run particle minecraft:block_marker minecraft:red_stained_glass 0 0 ~ ~ 255 0 0.1 25 force @a[x=0]
execute at @s run particle minecraft:block_marker minecraft:red_stained_glass 0 ~ 0 ~ 0 ~ 0.1 10 force @a[x=0]
execute store result entity @s Pos[2] double -0.005 run scoreboard players get @s hub.borderSize
execute at @s run particle minecraft:block_marker minecraft:red_stained_glass 0 0 ~ ~ 255 0 0.1 25 force @a[x=0]

execute store result entity @s Pos[0] double 0.005 run scoreboard players get @s hub.borderSize
execute store result entity @s Pos[2] double 0.0025 run scoreboard players get @s hub.borderSize
execute at @s run particle minecraft:block_marker minecraft:red_stained_glass ~ 0 0 0 255 ~ 0.1 25 force @a[x=0]
execute store result entity @s Pos[0] double -0.005 run scoreboard players get @s hub.borderSize
execute at @s run particle minecraft:block_marker minecraft:red_stained_glass ~ 0 0 0 255 ~ 0.1 25 force @a[x=0]
execute at @s run tp @s 0 1000 0