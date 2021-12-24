execute in hub:hub run summon marker 0 1000 0 {Tags:["hub.playerBorderChecker"]}
execute as @e[tag=hub.playerBorderChecker,limit=1] run tp ~ ~ ~
execute as @e[tag=hub.playerBorderChecker,limit=1] run function hub:border/apply_border