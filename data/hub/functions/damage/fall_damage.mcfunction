execute store result score fallDistance hub.Variables run data get entity @s FallDistance
scoreboard players set damage hub.Variables 0
execute if score fallDistance hub.Variables matches 0 run scoreboard players operation damage hub.Variables = @s hub.fallDistance
scoreboard players remove damage hub.Variables 3
execute if score damage hub.Variables matches ..0 run scoreboard players set damage hub.Variables 0
execute if score fallDistance hub.Variables matches 0 run scoreboard players operation damage hub.Variables *= @s hub.fallDmgPercent
scoreboard players set dmgMultiplier hub.Variables 100
execute if block ~ ~-1 ~ slime_block unless entity @s[predicate=hub:sneaking] run scoreboard players set dmgMultiplier hub.Variables 0
execute if block ~ ~-1 ~ scaffolding if entity @s[predicate=hub:sneaking] run scoreboard players set dmgMultiplier hub.Variables 0
execute if entity @s[predicate=hub:in_water] run scoreboard players set dmgMultiplier hub.Variables 0
execute if block ~ ~ ~ powder_snow run scoreboard players set dmgMultiplier hub.Variables 0
execute if block ~ ~ ~-1 powder_snow run scoreboard players set dmgMultiplier hub.Variables 0
execute if block ~ ~ ~ cobweb run scoreboard players set dmgMultiplier hub.Variables 0
execute if block ~ ~ ~ sweet_berry_bush run scoreboard players set dmgMultiplier hub.Variables 0
execute if block ~ ~ ~ ladder run scoreboard players set dmgMultiplier hub.Variables 0
execute if block ~ ~ ~ vine run scoreboard players set dmgMultiplier hub.Variables 0
execute if block ~ ~ ~ #beds run scoreboard players operation dmgMultiplier hub.Variables /= two m.Constants
execute if block ~ ~-1 ~ hay_block run scoreboard players operation dmgMultiplier hub.Variables /= five m.Constants
execute if block ~ ~-1 ~ honey_block run scoreboard players operation dmgMultiplier hub.Variables /= five m.Constants
execute if entity @s[predicate=hub:in_lava] run scoreboard players operation dmgMultiplier hub.Variables /= two m.Constants
execute if score fallDistance hub.Variables matches 0 run scoreboard players operation damage hub.Variables *= dmgMultiplier hub.Variables
execute if score fallDistance hub.Variables matches 0 run scoreboard players operation damage hub.Variables /= hundred hub.Constants
execute if score fallDistance hub.Variables matches 0 run scoreboard players operation damage hub.Variables /= hundred hub.Constants
execute at @s if score fallDistance hub.Variables matches 0 unless score damage hub.Variables matches 0 as @s[gamemode=!creative] run function hub:damage/deal_damage
execute store result score @s hub.fallDistance run data get entity @s FallDistance