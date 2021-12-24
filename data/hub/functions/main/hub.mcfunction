execute at @s run function #hub:hub

team leave @s
team join Hub @s

clear @s
effect clear @s

xp set @s 0 points
xp set @s 0 levels

effect give @s instant_health 1 100
tp @s 0 100 0 180 0
execute positioned 0 100 0 rotated 180 0 run function hub:main/death/spawnpoint
gamemode adventure
scoreboard players set @s hub.fallDmgPercent 0
scoreboard players set @s hub 0