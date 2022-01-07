execute as @a unless entity @s[scores={hub=-2147483648..2147483647}] run scoreboard players set @s hub 1
scoreboard players enable @a hub
scoreboard players add @a[tag=Parkour] hub.Timer 1

execute as @a[scores={hub.quits=1..}] at @s run scoreboard players set @s hub 1
scoreboard players set @a hub.quits 0
execute as @a[scores={hub=1..}] in hub:hub run function hub:main/hub
execute as @a[scores={hub.deathtime=0}] at @s run scoreboard players set @s hub.fallDistance 0
execute as @a[scores={hub.deathtime=1}] at @s run function hub:main/death/main
execute in hub:hub run function hub:main/hub_main

scoreboard players enable @a credits
execute as @a[scores={credits=1}] run function hub:main/credits/piglet
execute as @a[scores={credits=2}] run function hub:main/credits/ryan
execute as @a[scores={credits=3}] run function hub:main/credits/max
execute as @a[scores={credits=4}] run function hub:main/credits/devon
scoreboard players set @a credits 0

execute as @a at @s run function hub:damage/fall_damage

execute as @a[tag=hub.reset_health] run function hub:damage/reset_health
function hub:border/main