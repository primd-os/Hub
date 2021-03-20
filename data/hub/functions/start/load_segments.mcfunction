execute at @e[tag=h.segment_loader] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"kcor_noved",rotation:"NONE",posX:-6,mode:"LOAD",posY:1,sizeX:13,posZ:-2,integrity:1.0f,showair:0b,name:"hub:segment",sizeY:5,sizeZ:5,showboundingbox:1b}
execute at @e[tag=h.segment_loader] run setblock ~ ~-1 ~ minecraft:redstone_block
execute at @e[tag=h.segment_loader] run fill ~ ~-1 ~ ~ ~ ~ air
execute at @e[tag=h.segment_loader] run setblock ~-6 ~ ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"kcor_noved",rotation:"COUNTERCLOCKWISE_90",posX:-4,mode:"LOAD",posY:1,sizeX:5,posZ:2,integrity:1.0f,showair:0b,name:"",sizeY:5,sizeZ:5,showboundingbox:1b}
execute at @e[tag=h.segment_loader] run data modify block ~-6 ~ ~ name set from storage hub:hub doorways[0]
execute at @e[tag=h.segment_loader] run setblock ~-6 ~-1 ~ minecraft:redstone_block
execute at @e[tag=h.segment_loader] run fill ~-6 ~-1 ~ ~-6 ~ ~ air
data remove storage hub:hub doorways[0]
execute at @e[tag=h.segment_loader] run setblock ~6 ~ ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"kcor_noved",rotation:"CLOCKWISE_90",posX:4,mode:"LOAD",posY:1,sizeX:5,posZ:-2,integrity:1.0f,showair:0b,name:"",sizeY:5,sizeZ:5,showboundingbox:1b}
execute at @e[tag=h.segment_loader] run data modify block ~6 ~ ~ name set from storage hub:hub doorways[0]
execute at @e[tag=h.segment_loader] run setblock ~6 ~-1 ~ minecraft:redstone_block
execute at @e[tag=h.segment_loader] run fill ~6 ~-1 ~ ~6 ~ ~ air
data remove storage hub:hub doorways[0]
execute as @e[tag=h.segment_loader] at @s run tp @s ~ ~ ~-10
execute if data storage hub:hub doorways[0] run function hub:start/load_segments