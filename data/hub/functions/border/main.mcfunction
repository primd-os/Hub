execute as @e[type=marker,tag=hub.border] if score @s hub.borderChangeLength matches 1.. run scoreboard players operation @s hub.borderSize += @s hub.borderSizeChange 
execute as @e[type=marker,tag=hub.border] if score @s hub.borderChangeLength matches 1.. run scoreboard players remove @s hub.borderChangeLength 1
execute as @e[type=marker,tag=hub.border] run function hub:border/as_display
execute as @e[type=marker,tag=hub.border] at @s as @a[x=0] at @s run function hub:border/start_apply_border