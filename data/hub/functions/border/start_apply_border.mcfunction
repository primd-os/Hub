execute in hub:hub run summon marker 0 1000 0 {Tags:["hub.playerBorderChecker"]}
execute as @e[tag=hub.playerBorderChecker,limit=1] run tp ~ ~ ~
# The above line SHOULDN'T be needed, but it is. ¯\_(ツ)_/¯
execute as @e[tag=hub.playerBorderChecker,limit=1] run function hub:border/apply_border