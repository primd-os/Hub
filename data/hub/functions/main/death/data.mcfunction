data modify entity @s Pos set from storage rx.playerdb:io player.data.primd.hub.spawn
data modify entity @s Rotation set from storage rx.playerdb:io player.data.primd.hub.spawnRot
execute positioned as @s rotated as @s if data storage rx.playerdb:io player.data.primd.hub.spawn run tp @a[tag=hub.dying,limit=1] ~ ~ ~ ~ ~
execute positioned as @s rotated as @s if data storage rx.playerdb:io player.data.primd.hub.spawn run spawnpoint @a[tag=hub.dying,limit=1] ~ ~ ~ ~
kill @s