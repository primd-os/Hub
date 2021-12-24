scoreboard players operation SubSec hub.Variables = @s hub.Timer
scoreboard players operation Sec hub.Variables = SubSec hub.Variables
scoreboard players operation Sec hub.Variables /= TPS hub.Constants
scoreboard players operation SubSec hub.Variables %= TPS hub.Constants
scoreboard players operation SubSec hub.Variables *= CSPT hub.Constants
scoreboard players operation Min hub.Variables = Sec hub.Variables
scoreboard players operation Min hub.Variables /= SPM hub.Constants
scoreboard players operation Sec hub.Variables %= SPM hub.Constants
execute if score SubSec hub.Variables matches ..9 if score Sec hub.Variables matches ..9 run tellraw @s [{"text": "You completed the parkour in "},{"score": {"name": "Min","objective": "hub.Variables"}},{"text": ":0"},{"score": {"name": "Sec","objective": "hub.Variables"}},{"text": ".0"},{"score": {"name": "SubSec","objective": "hub.Variables"}}]
execute if score SubSec hub.Variables matches ..9 if score Sec hub.Variables matches 10.. run tellraw @s [{"text": "You completed the parkour in "},{"score": {"name": "Min","objective": "hub.Variables"}},{"text": ":"},{"score": {"name": "Sec","objective": "hub.Variables"}},{"text": ".0"},{"score": {"name": "SubSec","objective": "hub.Variables"}}]
execute if score SubSec hub.Variables matches 10.. if score Sec hub.Variables matches ..9 run tellraw @s [{"text": "You completed the parkour in "},{"score": {"name": "Min","objective": "hub.Variables"}},{"text": ":0"},{"score": {"name": "Sec","objective": "hub.Variables"}},{"text": "."},{"score": {"name": "SubSec","objective": "hub.Variables"}}]
execute if score SubSec hub.Variables matches 10.. if score Sec hub.Variables matches 10.. run tellraw @s [{"text": "You completed the parkour in "},{"score": {"name": "Min","objective": "hub.Variables"}},{"text": ":"},{"score": {"name": "Sec","objective": "hub.Variables"}},{"text": "."},{"score": {"name": "SubSec","objective": "hub.Variables"}}]
tag @s remove Parkour