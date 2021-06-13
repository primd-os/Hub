function rx.playerdb:api/get_self
spawnpoint @s ~ ~ ~ ~
data modify storage rx:io playerdb.player.data.primd.hub.spawn set value [0,0,0]
data modify storage rx:io playerdb.player.data.primd.hub.spawn[0] set from entity @s SpawnX
data modify storage rx:io playerdb.player.data.primd.hub.spawn[1] set from entity @s SpawnY
data modify storage rx:io playerdb.player.data.primd.hub.spawn[2] set from entity @s SpawnZ
data modify storage rx:io playerdb.player.data.primd.hub.spawnRot set value [0,0]
data modify storage rx:io playerdb.player.data.primd.hub.spawnRot[0] set from entity @s SpawnAngle
data modify storage rx:io playerdb.player.data.primd.hub.spawnDim set from entity @s SpawnDimension
function rx.playerdb:api/save_self