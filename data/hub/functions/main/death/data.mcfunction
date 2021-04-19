data modify entity @s Pos set from storage rx:io playerdb.player.data.primd.hub.spawn
data modify entity @s Rotation set from storage rx:io playerdb.player.data.primd.hub.spawnRot
tp @a[tag=h.dying,limit=1] @s
execute at @s run spawnpoint @a[tag=h.dying,limit=1]
kill @s