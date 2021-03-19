execute as @s[nbt={SpawnDimension:"minecraft:overworld"}] in minecraft:overworld run function hub:main/death_warp
execute as @s[nbt={SpawnDimension:"minecraft:the_nether"}] in minecraft:the_nether run function hub:main/death_warp
execute as @s[nbt={SpawnDimension:"minecraft:the_end"}] in minecraft:the_end run function hub:main/death_warp
execute as @s[nbt={SpawnDimension:"hub:hub"}] in hub:hub run function hub:main/death_warp
function #hub:register_dimensions
scoreboard players set @s h.death 0