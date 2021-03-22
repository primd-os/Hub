function rx.playerdb:api/get_self 
execute if data storage rx:io playerdb.player.data.primd.hub{spawnDim:"minecraft:overworld"} in minecraft:overworld run function hub:main/death/warp
execute if data storage rx:io playerdb.player.data.primd.hub{spawnDim:"minecraft:the_nether"} in minecraft:the_nether run function hub:main/death/warp
execute if data storage rx:io playerdb.player.data.primd.hub{spawnDim:"minecraft:the_end"} in minecraft:the_end run function hub:main/death/warp
execute if data storage rx:io playerdb.player.data.primd.hub{spawnDim:"hub:hub"} in hub:hub run function hub:main/death/warp
function #hub:register_dimensions
scoreboard players set @s h.death 0