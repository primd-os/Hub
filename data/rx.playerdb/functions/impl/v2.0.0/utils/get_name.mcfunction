# source: rx.playerdb:impl/v2.0.0/utils/get_name
execute in hub:hub run loot replace block -30000000 0 1602 container.0 loot rx.playerdb:impl/v2.0.0/player_head
execute in hub:hub run data modify storage rx.playerdb:temp player_name set from block -30000000 0 1602 Items[0].tag.SkullOwner.Name
