gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule sendCommandFeedback false

team add Hub
team modify Hub collisionRule never

team leave @a
team join Hub @a
effect give @a instant_health 1 100

clear @a
gamemode adventure @a
execute as @a in hub:hub run tp @s 0 100 0 180 0
execute as @a in hub:hub positioned 0 100 0 rotated 180 0 run function hub:main/death/spawnpoint

execute in hub:hub run forceload add -15 -15 15 15
execute in hub:hub run setblock 0 98 0 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"kcor_noved",rotation:"CLOCKWISE_180",posX:19,mode:"LOAD",posY:1,sizeX:13,posZ:40,integrity:1.0f,showair:0b,name:"hub:start_block",sizeY:10,sizeZ:13} destroy
execute in hub:hub run setblock 0 99 0 redstone_block
data modify storage hub:hub doorways set value []
function #hub:doorway
execute in hub:hub run summon minecraft:area_effect_cloud 0 98 -16 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["h.segment_loader"]}
function hub:start/load_segments
execute as @e[tag=h.segment_loader] at @s run tp @s ~-3 ~ ~5
execute at @e[tag=h.segment_loader] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"kcor_noved",rotation:"CLOCKWISE_180",posX:3,mode:"LOAD",posY:1,sizeX:13,posZ:3,integrity:1.0f,showair:0b,name:"hub:end",sizeY:5,sizeZ:7,showboundingbox:1b} destroy
execute at @e[tag=h.segment_loader] run setblock ~ ~1 ~ minecraft:redstone_block
kill @e[tag=h.segment_loader]
execute in hub:hub run forceload remove -15 -15 15 15

execute in hub:hub run forceload add 0 0

scoreboard objectives add hub trigger
scoreboard objectives add credits trigger
scoreboard objectives add h.quits custom:leave_game
scoreboard objectives add h.death deathCount
scoreboard objectives add h.Timer dummy
scoreboard objectives add h.Variables dummy
scoreboard objectives add h.Constants dummy
scoreboard players set TPS h.Constants 20
scoreboard players set CSPT h.Constants 5
scoreboard players set SPM h.Constants 60