scoreboard players set @s hub.pearlCount 0
execute as @e[type=ender_pearl] if score @s hub.UUID1 = @a[sort=nearest,limit=1] hub.UUID1 as @a[sort=nearest,limit=1] run scoreboard players add @s hub.pearlCount 1
tag @s remove hub.justPearled
execute if score @s hub.pearlCount < @s hub.prevPearlCount run tag @s add hub.justPearled
scoreboard players operation @s hub.prevPearlCount = @s hub.pearlCount
execute as @s[tag=hub.justPearled] run function hub:main/on_pearl