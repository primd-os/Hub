forceload add ~-6 ~ ~1 ~5
setblock ~ ~ ~ minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",posX:0,mode:"LOAD",posY:0,posZ:8,name:"hub:segment"}
setblock ~ ~-1 ~ minecraft:redstone_block
fill ~ ~-1 ~ ~ ~ ~ air
setblock ~-6 ~-2 ~3 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",posX:0,mode:"LOAD",posY:0,posZ:5,name:""}
setblock ~-6 ~-2 ~3 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",posX:-4,mode:"LOAD",posY:0,posZ:1,name:""}
data modify block ~-6 ~-2 ~3 name set from storage hub:hub doorways[0]
setblock ~-6 ~-1 ~3 minecraft:redstone_block
fill ~-6 ~-3 ~3 ~-6 ~-2 ~3 air
data remove storage hub:hub doorways[0]
execute if data storage hub:hub doorways[0] run setblock ~1 ~-2 ~3 minecraft:structure_block[mode=load]{rotation:"NONE",posX:0,mode:"LOAD",posY:0,posZ:-3,name:""}
execute if data storage hub:hub doorways[0] run data modify block ~1 ~-2 ~3 name set from storage hub:hub doorways[0]
execute unless data storage hub:hub doorways[0] run setblock ~1 ~-2 ~3 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",posX:10,mode:"LOAD",posY:0,posZ:5,name:""}
execute unless data storage hub:hub doorways[0] run data modify block ~1 ~-2 ~3 name set value "hub:unavailible"
setblock ~1 ~-1 ~3 minecraft:redstone_block
fill ~1 ~-3 ~3 ~1 ~-2 ~3 air
data remove storage hub:hub doorways[0]

execute unless data storage hub:hub doorways[0] run setblock ~-3 ~ ~-3 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",posX:3,mode:"LOAD",posY:0,posZ:3,name:"hub:end"} destroy
execute unless data storage hub:hub doorways[0] run setblock ~-3 ~1 ~-3 minecraft:redstone_block
execute if data storage hub:hub doorways[0] positioned ~ ~ ~-8 run function hub:start/load_segments
forceload remove ~-6 ~ ~1 ~5