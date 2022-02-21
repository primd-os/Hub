scoreboard players set damage hub.Variables 500
function hub:damage/deal_fall_damage
execute store result score newBaseFall hub.Variables run data get entity @s FallDistance
scoreboard players operation @s hub.baseFallDistance += newBaseFall hub.Variables