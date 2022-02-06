function #rx.playerdb:api/v2/get/self 
execute in hub:hub run summon minecraft:marker -30000000 10 74049 {Tags: ["hub.deathTracker"]}
execute if data storage rx.playerdb:io player.data.primd.hub{spawnDim:"minecraft:overworld"} in minecraft:overworld run function hub:main/death/warp
execute if data storage rx.playerdb:io player.data.primd.hub{spawnDim:"minecraft:the_nether"} in minecraft:the_nether run function hub:main/death/warp
execute if data storage rx.playerdb:io player.data.primd.hub{spawnDim:"minecraft:the_end"} in minecraft:the_end run function hub:main/death/warp
execute if data storage rx.playerdb:io player.data.primd.hub{spawnDim:"hub:hub"} in hub:hub run function hub:main/death/warp
function #hub:register_dimensions
kill @e[tag=hub.deathTracker,limit=1]