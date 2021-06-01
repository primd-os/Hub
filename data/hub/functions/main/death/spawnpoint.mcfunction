function rx.playerdb:api/get_self
spawnpoint @s ~ ~ ~ ~
summon minecraft:marker ~ ~ ~ {Tags: ["h.spawn"]}
tp @e[type=marker,tag=h.spawn,limit=1] ~ ~ ~ ~ ~
data modify storage rx:io playerdb.player.data.primd.hub.spawn set from entity @e[type=marker,tag=h.spawn,limit=1] Pos
data modify storage rx:io playerdb.player.data.primd.hub.spawnRot set from entity @e[type=marker,tag=h.spawn,limit=1] Rotation
data modify storage rx:io playerdb.player.data.primd.hub.spawnDim set from entity @s SpawnDimension
kill @e[type=marker,tag=h.spawn]
function rx.playerdb:api/save_self