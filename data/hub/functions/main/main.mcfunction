scoreboard players enable @a Hub

execute as @a[scores={h.quits=1..}] at @s run scoreboard players set @s Hub 1
scoreboard players set @a h.quits 0
execute as @a[scores={Hub=1}] run function #hub:hub
execute as @a[scores={Hub=1}] in hub:hub run team leave @s
execute as @a[scores={Hub=1}] in hub:hub run effect give @s instant_health 1 100

execute as @a[scores={Hub=1}] in hub:hub run clear @s
execute as @a[scores={Hub=1}] in hub:hub run tp 0 100 0
execute as @a[scores={Hub=1}] run scoreboard players set @s Hub 0