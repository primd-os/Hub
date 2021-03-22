function rx.playerdb:api/get_self
spawnpoint
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["h.spawn"]}
tp @e[type=area_effect_cloud,tag=h.spawn,limit=1] ~ ~ ~ ~ ~
data modify storage rx:io playerdb.player.data.primd.hub.spawn set from entity @e[type=area_effect_cloud,tag=h.spawn,limit=1] Pos
data modify storage rx:io playerdb.player.data.primd.hub.spawnRot set from entity @e[type=area_effect_cloud,tag=h.spawn,limit=1] Rotation
data modify storage rx:io playerdb.player.data.primd.hub.spawnDim set from entity @s SpawnDimension
kill @e[type=area_effect_cloud,tag=h.spawn]
function rx.playerdb:api/save_self