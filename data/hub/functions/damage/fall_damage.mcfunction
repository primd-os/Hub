execute unless score @s hub.fallDmgPercent matches 0 store result score fallDistance hub.Variables run data get entity @s FallDistance
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

execute if score fallDistance hub.Variables matches 0 as @s[predicate=hub:effects/resistance/level1] run scoreboard players operation damage hub.Variables *= four hub.Constants
execute if score fallDistance hub.Variables matches 0 as @s[predicate=hub:effects/resistance/level1] run scoreboard players operation damage hub.Variables /= five hub.Constants
execute if score fallDistance hub.Variables matches 0 as @s[predicate=hub:effects/resistance/level2] run scoreboard players operation damage hub.Variables *= three hub.Constants
execute if score fallDistance hub.Variables matches 0 as @s[predicate=hub:effects/resistance/level2] run scoreboard players operation damage hub.Variables /= five hub.Constants
execute if score fallDistance hub.Variables matches 0 as @s[predicate=hub:effects/resistance/level3] run scoreboard players operation damage hub.Variables *= two hub.Constants
execute if score fallDistance hub.Variables matches 0 as @s[predicate=hub:effects/resistance/level3] run scoreboard players operation damage hub.Variables /= five hub.Constants
execute if score fallDistance hub.Variables matches 0 as @s[predicate=hub:effects/resistance/level4] run scoreboard players operation damage hub.Variables /= five hub.Constants
execute if score fallDistance hub.Variables matches 0 as @s[predicate=hub:effects/resistance/level5] run scoreboard players set damage hub.Variables 0

scoreboard players set EPF hub.Variables 25
execute if predicate hub:armor/protection/head_1 run scoreboard players remove EPF hub.Variables 1
execute if predicate hub:armor/protection/head_2 run scoreboard players remove EPF hub.Variables 2
execute if predicate hub:armor/protection/head_3 run scoreboard players remove EPF hub.Variables 3
execute if predicate hub:armor/protection/head_4 run scoreboard players remove EPF hub.Variables 4
execute if predicate hub:armor/protection/chest_1 run scoreboard players remove EPF hub.Variables 1
execute if predicate hub:armor/protection/chest_2 run scoreboard players remove EPF hub.Variables 2
execute if predicate hub:armor/protection/chest_3 run scoreboard players remove EPF hub.Variables 3
execute if predicate hub:armor/protection/chest_4 run scoreboard players remove EPF hub.Variables 4
execute if predicate hub:armor/protection/legs_1 run scoreboard players remove EPF hub.Variables 1
execute if predicate hub:armor/protection/legs_2 run scoreboard players remove EPF hub.Variables 2
execute if predicate hub:armor/protection/legs_3 run scoreboard players remove EPF hub.Variables 3
execute if predicate hub:armor/protection/legs_4 run scoreboard players remove EPF hub.Variables 4
execute if predicate hub:armor/protection/feet_1 run scoreboard players remove EPF hub.Variables 1
execute if predicate hub:armor/protection/feet_2 run scoreboard players remove EPF hub.Variables 2
execute if predicate hub:armor/protection/feet_3 run scoreboard players remove EPF hub.Variables 3
execute if predicate hub:armor/protection/feet_4 run scoreboard players remove EPF hub.Variables 4
execute if predicate hub:armor/feather_falling/level1 run scoreboard players remove EPF hub.Variables 3
execute if predicate hub:armor/feather_falling/level2 run scoreboard players remove EPF hub.Variables 6
execute if predicate hub:armor/feather_falling/level3 run scoreboard players remove EPF hub.Variables 9
execute if predicate hub:armor/feather_falling/level4 run scoreboard players remove EPF hub.Variables 12
execute if score EPF hub.Variables matches ..4 run scoreboard players set EPF hub.Variables 5
scoreboard players operation damage hub.Variables *= EPF hub.Variables
scoreboard players operation damage hub.Variables /= twenty_five hub.Constants

execute if score fallDistance hub.Variables matches 0 run scoreboard players operation damage hub.Variables /= hundred hub.Constants
execute if score fallDistance hub.Variables matches 0 run scoreboard players operation damage hub.Variables /= hundred hub.Constants
execute if score fallDistance hub.Variables matches 0 as @s[predicate=hub:effects/jump_boost/level1] run scoreboard players remove damage hub.Variables 1
execute if score fallDistance hub.Variables matches 0 as @s[predicate=hub:effects/jump_boost/level2] run scoreboard players remove damage hub.Variables 2
execute at @s if score fallDistance hub.Variables matches 0 unless score damage hub.Variables matches ..0 as @s[gamemode=!creative,gamemode=!spectator] run function hub:damage/deal_damage
scoreboard players operation @s hub.fallDistance = fallDistance hub.Variables