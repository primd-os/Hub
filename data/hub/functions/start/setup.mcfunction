gamerule doImmediateRespawn true
gamerule keepInventory true

team add Hub
team modify Hub collisionRule never

team leave @a
team join Hub @a
effect give @a instant_health 1 100

clear @a
gamemode adventure @a
execute as @a in hub:hub run tp @s 0 100 0 180 0
execute as @a in hub:hub positioned 0 100 0 rotated 180 0 run function hub:main/death/spawnpoint

execute in hub:hub run forceload add 0 0
execute in hub:hub run setblock 0 98 0 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"kcor_noved",rotation:"NONE",posX:-28,mode:"LOAD",posY:1,sizeX:13,posZ:-7,integrity:1.0f,showair:0b,name:"hub:start_block",sizeY:10,sizeZ:13} destroy
execute in hub:hub run setblock 0 99 0 redstone_block
data modify storage hub:hub doorways set value []
function #hub:doorway
execute in hub:hub positioned 0 98 -16 run function hub:start/load_segments

execute in hub:hub run forceload remove all
execute in hub:hub run forceload add -30000000 74049

scoreboard objectives add hub trigger
scoreboard objectives add credits trigger
scoreboard objectives add h.quits custom:leave_game
scoreboard objectives add h.deathtime custom:time_since_death
scoreboard objectives add h.Timer dummy
scoreboard objectives add h.Variables dummy
scoreboard objectives add h.Constants dummy
scoreboard players set TPS h.Constants 20
scoreboard players set CSPT h.Constants 5
scoreboard players set SPM h.Constants 60