gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule fallDamage false
gamerule showDeathMessages false
gamerule commandBlockOutput false
gamerule sendCommandFeedback true

team add hub.Team
team modify hub.Team collisionRule never
team modify hub.Team prefix {"text": "Hub | "}

team leave @a
team join hub.Team @a
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
execute in hub:hub run summon armor_stand -2 102.75 -6.75 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomName:'{"text":"GAMES","color":"green","bold":true}',CustomNameVisible:1b}

execute in hub:hub run forceload remove all
execute in hub:hub run forceload add -30000000 74049
execute in hub:hub run forceload add 0 0

scoreboard objectives add hub trigger
scoreboard objectives add credits trigger
scoreboard objectives add hub.quits custom:leave_game
scoreboard objectives add hub.deathtime custom:time_since_death
scoreboard objectives add hub.Timer dummy

scoreboard objectives add hub.HealthTimer dummy
scoreboard objectives add hub.fallDistance dummy
scoreboard objectives add hub.fallDmgPercent dummy

scoreboard objectives add hub.coordX dummy
scoreboard objectives add hub.coordY dummy
scoreboard objectives add hub.coordZ dummy

scoreboard objectives add hub.borderCeiling dummy
scoreboard objectives add hub.borderCeilingChange dummy

scoreboard objectives add hub.borderSize dummy
scoreboard objectives add hub.borderSizeChange dummy
scoreboard objectives add hub.borderChangeLength dummy

scoreboard objectives add hub.Variables dummy
scoreboard objectives add hub.Constants dummy
scoreboard players set negative_one hub.Constants -1
scoreboard players set two hub.Constants 2
scoreboard players set three hub.Constants 3
scoreboard players set four hub.Constants 4
scoreboard players set five hub.Constants 5
scoreboard players set twenty_five hub.Constants 25
scoreboard players set hundred hub.Constants 100
scoreboard players set TPS hub.Constants 20
scoreboard players set CSPT hub.Constants 5
scoreboard players set SPM hub.Constants 60

function hub:main/main