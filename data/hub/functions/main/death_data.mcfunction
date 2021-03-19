execute store result entity @s Pos[0] double 1 run data get entity @a[tag=h.dying,limit=1] SpawnX
execute store result entity @s Pos[1] double 1 run data get entity @a[tag=h.dying,limit=1] SpawnY
execute store result entity @s Pos[2] double 1 run data get entity @a[tag=h.dying,limit=1] SpawnZ
tp @a[tag=h.dying,limit=1] @s
kill @s