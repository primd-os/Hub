kill @e[type=ender_pearl,distance=0,limit=1]
function hub:main/check_pearl

scoreboard players operation damage hub.Variables = @s hub.fallDistance
scoreboard players operation damage hub.Variables -= @s hub.baseFallDistance
scoreboard players set @s hub.baseFallDistance 0
scoreboard players remove damage hub.Variables 2

scoreboard players set dmgMultiplier hub.Variables 100
execute as @s[predicate=hub:on_slime] unless entity @s[predicate=hub:sneaking] run scoreboard players set dmgMultiplier hub.Variables 0
execute as @s[predicate=hub:in_fall_resetting] run scoreboard players set dmgMultiplier hub.Variables 0

execute positioned ~-0.3 ~0.112114501952 ~-0.3 if predicate hub:is_water run scoreboard players set dmgMultiplier hub.Variables 0
execute positioned ~-0.3 ~0.112114501952 ~0.3 if predicate hub:is_water run scoreboard players set dmgMultiplier hub.Variables 0
execute positioned ~0.3 ~0.112114501952 ~-0.3 if predicate hub:is_water run scoreboard players set dmgMultiplier hub.Variables 0
execute positioned ~0.3 ~0.112114501952 ~0.3 if predicate hub:is_water run scoreboard players set dmgMultiplier hub.Variables 0
execute positioned ~-0.3 ~1 ~-0.3 if predicate hub:is_water run scoreboard players set dmgMultiplier hub.Variables 0
execute positioned ~-0.3 ~1 ~0.3 if predicate hub:is_water run scoreboard players set dmgMultiplier hub.Variables 0
execute positioned ~0.3 ~1 ~-0.3 if predicate hub:is_water run scoreboard players set dmgMultiplier hub.Variables 0
execute positioned ~0.3 ~1 ~0.3 if predicate hub:is_water run scoreboard players set dmgMultiplier hub.Variables 0
execute positioned ~-0.3 ~1.8 ~-0.3 if predicate hub:is_water run scoreboard players set dmgMultiplier hub.Variables 0
execute positioned ~-0.3 ~1.8 ~0.3 if predicate hub:is_water run scoreboard players set dmgMultiplier hub.Variables 0
execute positioned ~0.3 ~1.8 ~-0.3 if predicate hub:is_water run scoreboard players set dmgMultiplier hub.Variables 0
execute positioned ~0.3 ~1.8 ~0.3 if predicate hub:is_water run scoreboard players set dmgMultiplier hub.Variables 0

execute if block ~ ~ ~ powder_snow run scoreboard players set dmgMultiplier hub.Variables 0
execute if block ~ ~ ~-1 powder_snow run scoreboard players set dmgMultiplier hub.Variables 0
execute as @s[predicate=hub:on_bed] run scoreboard players operation dmgMultiplier hub.Variables /= two m.Constants
execute if block ~ ~-1 ~ hay_block run scoreboard players operation dmgMultiplier hub.Variables /= five m.Constants
execute if block ~ ~-1 ~ honey_block run scoreboard players operation dmgMultiplier hub.Variables /= five m.Constants
scoreboard players operation damage hub.Variables *= dmgMultiplier hub.Variables

execute if score damage hub.Variables matches 1.. if score @s hub.fallDmgPercent matches 1..99 run function hub:damage/deal_fall_damage
scoreboard players set @s hub.fallDistance 0