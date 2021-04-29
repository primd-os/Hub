execute as @a[x=0] at @s run kill @s[y=0,dy=-5]
execute as @a[x=0] run effect give @s saturation 2 2 true
execute as @a[x=0] run effect give @s resistance 2 4 true
execute as @a[x=0] run effect give @s weakness 2 2 true
execute as @a[x=-4,y=138,z=9,distance=..2] run title @s actionbar {"text": "Parkour God"}
execute as @a[x=-20,y=102,z=-5,distance=..1.5] run function hub:parkour/start
execute as @a[x=-5,y=134,z=8,distance=..1.5,tag=Parkour] run function hub:parkour/end_parkour
execute as @a[x=-3,y=99,z=-8,distance=..5] run tag @s remove Parkour