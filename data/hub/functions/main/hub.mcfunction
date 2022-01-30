execute at @s run function #hub:hub

team leave @s
team join hub.Team @s

tag @s remove hub.disableSpawnControl

clear @s
effect clear @s

xp set @s 0 points
xp set @s 0 levels

effect give @s instant_health 1 100
tp @s 0 3 0 180 0
execute positioned 0 3 0 rotated 180 0 run function hub:main/death/spawnpoint
gamemode adventure
scoreboard players set @s hub.fallDmgPercent 0
scoreboard players set @s hub 0

item replace entity @s hotbar.0 with written_book{title:"Navigation Book",author:"PRIMD Team",resolved:0b,pages:[]} 1
data modify storage hub:hub navigation_book set value []
data modify storage hub:hub navigation_book append value '{"text":" \\u0020 \\u0020 \\u0020-= ","color":"gray","extra":[{"text":"P","extra":[{"text":"R","color":"red"},"I",{"text":"M","color":"dark_blue"},"D"],"underlined":true,"bold":true,"color":"dark_gray"},{"text":" =-","color":"gray"}]}'
data modify storage hub:hub navigation_book append value '{"text":" \\u0020 \\u0020 \\u0020Navigation","color":"dark_blue","bold":true}'
data modify storage hub:hub navigation_book append value '{"text":" \\u0020(Click Below To Join)","color":"blue"}'
data modify storage hub:hub navigation_book append value '{"text":""}'
function #hub:navigation
item modify entity @s hotbar.0 hub:fill_navigation
