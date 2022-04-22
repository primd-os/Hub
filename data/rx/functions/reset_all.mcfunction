# rx97
#> resets all uid and sets $curr to 1

scoreboard players reset * rx.death_uid
scoreboard players reset * rx.kill_uid
scoreboard players reset * rx.atk_uid
scoreboard players reset * rx.def_uid
scoreboard players reset * rx.temp

scoreboard players set $curr rx.death_uid 1
scoreboard players set $curr rx.kill_uid 1
scoreboard players set $curr rx.atk_uid 1
scoreboard players set $curr rx.def_uid 1


advancement revoke @a only rx:death_cause/arrow
advancement revoke @a only rx:death_cause/explosion
advancement revoke @a only rx:death_cause/fire
advancement revoke @a only rx:death_cause/lightning
advancement revoke @a only rx:death_cause/magic
advancement revoke @a only rx:death_cause/melee
advancement revoke @a only rx:death_cause/starvation
advancement revoke @a only rx:death_cause/void