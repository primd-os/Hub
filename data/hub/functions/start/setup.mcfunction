gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule fallDamage true
gamerule showDeathMessages false
gamerule commandBlockOutput false
gamerule sendCommandFeedback true
difficulty normal

team add hub.Team
team modify hub.Team collisionRule never
team modify hub.Team prefix {"text": "Hub | "}

scoreboard players set @a hub 1

execute in hub:hub run forceload add 0 0
execute in hub:hub run setblock 0 2 0 minecraft:structure_block[mode=load]{posX:-28,mode:"LOAD",posY:0,posZ:-7,name:"hub:start_block"}
execute in hub:hub run setblock 1 2 0 redstone_block
data modify storage hub:hub doorways set value []
function #hub:doorway
execute in hub:hub positioned 0 2 -16 run function hub:start/load_segments
execute in hub:hub run summon armor_stand -2 5.75 -6.75 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomName:'{"text":"GAMES","color":"green","bold":true}',CustomNameVisible:1b}

execute in hub:hub run forceload remove all
execute in hub:hub run forceload add -30000000 74049
execute in hub:hub run forceload add 0 0

data modify storage hub:hub navigation_page set value '[{"nbt":"navigation_book[0]","storage":"hub:hub","interpret":true,"clickEvent":{"action":"run_command","value":"/trigger warp set 1"}},"\\n",{"nbt":"navigation_book[1]","storage":"hub:hub","interpret":true,"clickEvent":{"action":"run_command","value":"/trigger warp set 2"}},"\\n",{"nbt":"navigation_book[2]","storage":"hub:hub","interpret":true,"clickEvent":{"action":"run_command","value":"/trigger warp set 3"}},"\\n",{"nbt":"navigation_book[3]","storage":"hub:hub","interpret":true,"clickEvent":{"action":"run_command","value":"/trigger warp set 4"}},"\\n",{"nbt":"navigation_book[4]","storage":"hub:hub","interpret":true,"clickEvent":{"action":"run_command","value":"/trigger warp set 5"}},"\\n",{"nbt":"navigation_book[5]","storage":"hub:hub","interpret":true,"clickEvent":{"action":"run_command","value":"/trigger warp set 6"}},"\\n",{"nbt":"navigation_book[6]","storage":"hub:hub","interpret":true,"clickEvent":{"action":"run_command","value":"/trigger warp set 7"}},"\\n",{"nbt":"navigation_book[7]","storage":"hub:hub","interpret":true,"clickEvent":{"action":"run_command","value":"/trigger warp set 8"}},"\\n",{"nbt":"navigation_book[8]","storage":"hub:hub","interpret":true,"clickEvent":{"action":"run_command","value":"/trigger warp set 9"}},"\\n",{"nbt":"navigation_book[9]","storage":"hub:hub","interpret":true,"clickEvent":{"action":"run_command","value":"/trigger warp set 10"}},"\\n",{"nbt":"navigation_book[10]","storage":"hub:hub","interpret":true,"clickEvent":{"action":"run_command","value":"/trigger warp set 11"}},"\\n",{"nbt":"navigation_book[11]","storage":"hub:hub","interpret":true,"clickEvent":{"action":"run_command","value":"/trigger warp set 12"}},"\\n",{"nbt":"navigation_book[12]","storage":"hub:hub","interpret":true,"clickEvent":{"action":"run_command","value":"/trigger warp set 13"}},"\\n",{"nbt":"navigation_book[13]","storage":"hub:hub","interpret":true,"clickEvent":{"action":"run_command","value":"/trigger warp set 14"}}]'

scoreboard objectives add hub trigger
scoreboard objectives add help trigger
scoreboard objectives add credits trigger
scoreboard objectives add hub.quits custom:leave_game
scoreboard objectives add hub.deathtime custom:time_since_death
scoreboard objectives add hub.Timer dummy

scoreboard objectives add warp trigger

scoreboard objectives add hub.HealthTimer dummy
scoreboard objectives add hub.foodLevel food
scoreboard objectives add hub.UUID1 dummy

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