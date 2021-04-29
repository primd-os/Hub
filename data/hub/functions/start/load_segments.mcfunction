execute at @e[tag=h.segment_loader] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"kcor_noved",rotation:"CLOCKWISE_180",posX:0,mode:"LOAD",posY:1,sizeX:13,posZ:8,integrity:1.0f,showair:0b,name:"hub:segment",sizeY:5,sizeZ:5,showboundingbox:1b}
execute at @e[tag=h.segment_loader] run setblock ~ ~-1 ~ minecraft:redstone_block
execute at @e[tag=h.segment_loader] run fill ~ ~-1 ~ ~ ~ ~ air
execute at @e[tag=h.segment_loader] unless data storage hub:hub doorwayflip[0].flip run setblock ~-6 ~-2 ~3 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"kcor_noved",rotation:"CLOCKWISE_180",posX:0,mode:"LOAD",posY:1,sizeX:5,posZ:5,integrity:1.0f,showair:0b,name:"",sizeY:5,sizeZ:5,showboundingbox:1b}
execute at @e[tag=h.segment_loader] if data storage hub:hub doorwayflip[0].flip run setblock ~-6 ~-2 ~3 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"kcor_noved",rotation:"NONE",posX:-10,mode:"LOAD",posY:1,sizeX:5,posZ:-3,integrity:1.0f,showair:0b,name:"",sizeY:5,sizeZ:5,showboundingbox:1b}
execute at @e[tag=h.segment_loader] run setblock ~-6 ~-2 ~3 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"kcor_noved",rotation:"CLOCKWISE_180",posX:-4,mode:"LOAD",posY:1,sizeX:5,posZ:1,integrity:1.0f,showair:0b,name:"",sizeY:5,sizeZ:5,showboundingbox:1b}
execute at @e[tag=h.segment_loader] run data modify block ~-6 ~-2 ~3 name set from storage hub:hub doorways[0]
execute at @e[tag=h.segment_loader] run setblock ~-6 ~-3 ~3 minecraft:redstone_block
execute at @e[tag=h.segment_loader] run fill ~-6 ~-3 ~3 ~-6 ~-2 ~3 air
data remove storage hub:hub doorways[0]
data remove storage hub:hub doorwayflip[0]
execute at @e[tag=h.segment_loader] if data storage hub:hub doorways[0] unless data storage hub:hub doorwayflip[0].flip run setblock ~1 ~-2 ~3 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"kcor_noved",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:5,posZ:-3,integrity:1.0f,showair:0b,name:"",sizeY:5,sizeZ:5,showboundingbox:1b}
execute at @e[tag=h.segment_loader] if data storage hub:hub doorwayflip[0].flip run setblock ~1 ~-2 ~3 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"kcor_noved",rotation:"CLOCKWISE_180",posX:10,mode:"LOAD",posY:1,sizeX:5,posZ:5,integrity:1.0f,showair:0b,name:"",sizeY:5,sizeZ:5,showboundingbox:1b}
execute if data storage hub:hub doorways[0] at @e[tag=h.segment_loader] run data modify block ~1 ~-2 ~3 name set from storage hub:hub doorways[0]
execute unless data storage hub:hub doorways[0] at @e[tag=h.segment_loader] run setblock ~1 ~-2 ~3 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"kcor_noved",rotation:"CLOCKWISE_180",posX:10,mode:"LOAD",posY:1,sizeX:5,posZ:5,integrity:1.0f,showair:0b,name:"",sizeY:5,sizeZ:5,showboundingbox:1b}
execute unless data storage hub:hub doorways[0] at @e[tag=h.segment_loader] run data modify block ~1 ~-2 ~3 name set value "hub:unavailible"
execute at @e[tag=h.segment_loader] run setblock ~1 ~-3 ~3 minecraft:redstone_block
execute at @e[tag=h.segment_loader] run fill ~1 ~-3 ~3 ~1 ~-2 ~3 air
data remove storage hub:hub doorways[0]
data remove storage hub:hub doorwayflip[0]
execute as @e[tag=h.segment_loader] at @s run tp @s ~ ~ ~-8
execute if data storage hub:hub doorways[0] run function hub:start/load_segments