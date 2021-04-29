scoreboard players enable @a hub
scoreboard players add @a[tag=Parkour] h.Timer 1

execute as @a[scores={h.quits=1..}] at @s run scoreboard players set @s hub 1
scoreboard players set @a h.quits 0
execute as @a[scores={hub=1..}] in hub:hub run function hub:main/hub
execute as @a[scores={h.death=1..},nbt={DeathTime:0s}] at @s run function hub:main/death/main
execute in hub:hub run function hub:main/hub_main