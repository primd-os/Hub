kill @s[y=0,dy=-5]
effect give @s saturation 2 2 true
effect give @s resistance 2 4 true
effect give @s weakness 2 2 true
execute as @s[x=-4,y=138,z=9,distance=..2] run advancement grant @s only hub:parkour_god
execute as @s[x=-4,y=138,z=9,distance=..2] run title @s actionbar {"text": "Parkour God"}
execute as @s[x=-20,y=102,z=-5,distance=..1.5] run function hub:parkour/start
execute as @s[x=-5,y=134,z=8,distance=..1.5,tag=Parkour] run advancement grant @s only hub:parkour
execute as @s[x=-5,y=134,z=8,distance=..1.5,tag=Parkour] if score @s hub.Timer matches ..720 run advancement grant @s only hub:fast_parkour
execute as @s[x=-5,y=134,z=8,distance=..1.5,tag=Parkour] run function hub:parkour/end_parkour
execute as @s[x=-3,y=99,z=-8,distance=..5] run tag @s remove Parkour