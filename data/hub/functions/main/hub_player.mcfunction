kill @s[y=0,dy=-5]
effect give @s saturation 2 2 true
effect give @s resistance 2 4 true
effect give @s weakness 2 2 true
execute as @s[x=-4,y=41,z=9,distance=..2] run advancement grant @s only hub:parkour_god
execute as @s[x=-4,y=41,z=9,distance=..2] run title @s actionbar {"text": "Parkour God"}
execute as @s[x=-20,y=5,z=-5,distance=..1.5,tag=!Parkour] run give @s ender_eye{display:{Name:'{"text":"Teleport to Start"}'}}
execute as @s[x=-20,y=5,z=-5,distance=..1.5] run function hub:parkour/start
execute as @s[x=-5,y=37,z=8,distance=..1.5,tag=Parkour] run advancement grant @s only hub:parkour
execute as @s[x=-5,y=37,z=8,distance=..1.5,tag=Parkour] if score @s hub.Timer matches ..720 run advancement grant @s only hub:fast_parkour
execute as @s[x=-5,y=37,z=8,distance=..1.5,tag=Parkour] run function hub:parkour/end_parkour
execute as @s[x=-3,y=2,z=-8,distance=..5,tag=Parkour] run clear @s ender_eye
execute as @s[x=-3,y=2,z=-8,distance=..5] run tag @s remove Parkour

scoreboard players enable @s warp
execute if score @s warp matches 1.. run function #hub:warp_checks
scoreboard players set @s warp 0