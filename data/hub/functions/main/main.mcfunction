scoreboard players enable @a Hub

execute as @a[scores={h.quits=1..}] at @s run scoreboard players set @s Hub 1
scoreboard players set @a h.quits 0
execute as @a[scores={Hub=1..}] in hub:hub run function hub:main/hub
execute in hub:hub run function hub:main/hub_main