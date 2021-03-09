scoreboard players enable @a hub

execute as @a[scores={h.quits=1..}] at @s run scoreboard players set @s hub 1
scoreboard players set @a h.quits 0
execute as @a[scores={hub=1..}] in hub:hub run function hub:main/hub
execute in hub:hub run function hub:main/hub_main