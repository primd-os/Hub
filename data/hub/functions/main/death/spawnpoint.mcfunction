function #rx.playerdb:api/v2/get/self
spawnpoint @s ~ ~ ~ ~
data modify storage rx.playerdb:io player.data.primd.hub.spawn set value [0d,100d,0d]
execute store result storage rx.playerdb:io player.data.primd.hub.spawn[0] double 1 run data get entity @s SpawnX
execute store result storage rx.playerdb:io player.data.primd.hub.spawn[1] double 1 run data get entity @s SpawnY
execute store result storage rx.playerdb:io player.data.primd.hub.spawn[2] double 1 run data get entity @s SpawnZ
data modify storage rx.playerdb:io player.data.primd.hub.spawnRot set value [0f,0f]
execute store result storage rx.playerdb:io player.data.primd.hub.spawnRot[0] float 0.1 run data get entity @s SpawnAngle 10
data modify storage rx.playerdb:io player.data.primd.hub.spawnDim set from entity @s SpawnDimension
function #rx.playerdb:api/v2/save/self