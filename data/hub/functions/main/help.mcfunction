tellraw @s {"text":"-=- PRIMD Help Menu -=-"}
tellraw @s [{"text":"/trigger hub "},{"text":"Go to the Hub","color":"gray"}]
tellraw @s [{"text":"/trigger help "},{"text":"Show this menu","color":"gray"}]
tellraw @s [{"text":"/trigger credits "},{"text":"Show the credits","color":"gray"}]
tellraw @s[scores={warp=-2147483648..2147483647}] [{"text":"/trigger warp "},{"text":"Used to send people to minigames from navigation book","color":"gray"}]
function #hub:help
scoreboard players set @s help 0
