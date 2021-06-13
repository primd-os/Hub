function rx.playerdb:api/get_self
spawnpoint @s ~ ~ ~ ~
data modify storage rx:io playerdb.player.data.primd.hub.spawn set value [0d,100d,0d]
execute if data entity @s SpawnX store result storage rx:io playerdb.player.data.primd.hub.spawn[0] double 1 run data get entity @s SpawnX
execute if data entity @s SpawnY store result storage rx:io playerdb.player.data.primd.hub.spawn[1] double 1 run data get entity @s SpawnY
execute if data entity @s SpawnZ store result storage rx:io playerdb.player.data.primd.hub.spawn[2] double 1 run data get entity @s SpawnZ
data modify storage rx:io playerdb.player.data.primd.hub.spawnRot set value [0f,0f]
execute store result storage rx:io playerdb.player.data.primd.hub.spawnRot[0] float 0.1 run data get entity @s SpawnAngle 10
data modify storage rx:io playerdb.player.data.primd.hub.spawnDim set from entity @s SpawnDimension
function rx.playerdb:api/save_self