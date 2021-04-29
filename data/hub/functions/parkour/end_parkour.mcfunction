scoreboard players operation SubSec h.Variables = @s h.Timer
scoreboard players operation Sec h.Variables = SubSec h.Variables
scoreboard players operation Sec h.Variables /= TPS h.Constants
scoreboard players operation SubSec h.Variables %= TPS h.Constants
scoreboard players operation SubSec h.Variables *= CSPT h.Constants
scoreboard players operation Min h.Variables = Sec h.Variables
scoreboard players operation Min h.Variables /= SPM h.Constants
scoreboard players operation Sec h.Variables %= SPM h.Constants
execute if score SubSec h.Variables matches ..9 if score Sec h.Variables matches ..9 run tellraw @s [{"text": "You completed the parkour in "},{"score": {"name": "Min","objective": "h.Variables"}},{"text": ":0"},{"score": {"name": "Sec","objective": "h.Variables"}},{"text": ".0"},{"score": {"name": "SubSec","objective": "h.Variables"}}]
execute if score SubSec h.Variables matches ..9 if score Sec h.Variables matches 10.. run tellraw @s [{"text": "You completed the parkour in "},{"score": {"name": "Min","objective": "h.Variables"}},{"text": ":"},{"score": {"name": "Sec","objective": "h.Variables"}},{"text": ".0"},{"score": {"name": "SubSec","objective": "h.Variables"}}]
execute if score SubSec h.Variables matches 10.. if score Sec h.Variables matches ..9 run tellraw @s [{"text": "You completed the parkour in "},{"score": {"name": "Min","objective": "h.Variables"}},{"text": ":0"},{"score": {"name": "Sec","objective": "h.Variables"}},{"text": "."},{"score": {"name": "SubSec","objective": "h.Variables"}}]
execute if score SubSec h.Variables matches 10.. if score Sec h.Variables matches 10.. run tellraw @s [{"text": "You completed the parkour in "},{"score": {"name": "Min","objective": "h.Variables"}},{"text": ":"},{"score": {"name": "Sec","objective": "h.Variables"}},{"text": "."},{"score": {"name": "SubSec","objective": "h.Variables"}}]
tag @s remove Parkour