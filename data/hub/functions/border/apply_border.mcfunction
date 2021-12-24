tp @s ~ ~ ~
execute store result score @s hub.coordX run data get entity @s Pos[0] 50
execute store result score @s hub.coordZ run data get entity @s Pos[2] 50
execute if score @s hub.coordX matches ..0 run scoreboard players operation @s hub.coordX *= negative_one hub.Constants
execute if score @s hub.coordZ matches ..0 run scoreboard players operation @s hub.coordZ *= negative_one hub.Constants
execute if score @s hub.coordX > @e[x=0,tag=hub.border,limit=1] hub.borderSize run effect give @a[sort=nearest,limit=1] wither 1 1 true
execute if score @s hub.coordZ > @e[x=0,tag=hub.border,limit=1] hub.borderSize run effect give @a[sort=nearest,limit=1] wither 1 1 true
kill @s