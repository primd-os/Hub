# Hub

The datapack used for the PRIMD server hub system(Test server is `play.primd.net`). You can also use it to create your own hub with minigames that follow the proper format. Note this is only a base module and you will also need the datapacks for the minigames. This repo, as well as all the minigames are licenced under the MIT liscence, meaning you can use them for any purpose without restriction.

## Minigame Library

|                        Name                                      | Description
| ---------------------------------------------------------------- | ------------
| [Missile Mayhem](https://github.com/primd-os/MissileMayhem)      | A missilewars type minigame with multiple missile sets and gamemodes
| [Bridge World](https://github.com/primd-os/Wool-World)           | A world where you can build with wool
| [HubVanilla](https://github.com/primd-os/HubVanilla)             | Allows access to overworld via hub system
| [Mini Railways](https://github.com/primd-os/Mini-Railways)       | A game inspired by mini motorways about quickly moving items with minecarts
| [Party Games](https://github.com/primd-os/party-games)           | A set of short random games to play with friends
| [Ice Boom](https://github.com/primd-os/iceexplosion)(archived)   | A minigame to survive the longest on a platform of decaying ice where destroyed ground becomes ice and you can cause explosions
| [Bridge Fight](https://github.com/primd-os/bridgefight)(archived)| A minigame similar to hypixel's bridge duels except placing blocks is limited leading to strategy

## Creating a World

To create a world with your choice of minigames:

1. Press create world
2. Click datapacks
3. Drag this datapack and any other minigame datapacks into the left side
4. Click the arrows next to them until they are all on the right side
5. Click the arrows to move the hub datapack near the bottom
6. Press done and create your world.

## Triggers

* `hub` - Go to the hub from anywhere
* `credits` - Show the credits for the hub and all minigames

## Making a minigame

### Basic Principles

One of the most important things when adding a minigame is compatibility with all other minigames. This leads to a set of requirements below:

* Do everything for your game in a custom dimension
* Don't affect any players outside of your custom dimension
* Due to compatibility problems you should not access the minecraft namespace at all except for tick and load function tags (which you don't need if you use [Lantern Load](https://github.com/LanternMC/Load))
* Because you have to use a custom dimension everything must be constructed by your datapacks because you can't use a world download. The easiest way to do this is via structure blocks.
* To prevent overlap of scoreboard variables prefix them. For example Missile Mayhem prefixes its scoreboards with `m.`. The exeption to this is triggers for usability purposes.
* It is also recommended to do the same prefixing with tags.
* The hub uses [Lantern Load](https://github.com/LanternMC/Load). You don't have to use this but it is recommended.

### Crucial Steps

`#hub:doorway` should contain a function that adds the name of your doorway structure to the storage hub:hub doorways.

```mcfunction
data modify storage hub:hub doorways append value "example:doorway"
```

`#hub:register_dimensions` should contain a function that checks if `rx.playerdb:io player.data.primd.hub.spawnDim` matches the name of a custom dimension of your minigame and if it does then executes `hub:main/death/warp` in that dimension.

```mcfunction
execute if data storage rx.playerdb:io player.data.primd.hub{spawnDim:"example:example"} in example:example run function hub:main/death/warp
```

`#hub:navigation` is responsible for adding entries to the navigation book, as well as storing where the entries are in the navigation book so you can tell if your entry has been clicked.

```mcfunction
execute store result score GameId ex.Variables run data get storage hub:hub navigation_book
scoreboard players add GameId ex.Variables 1
data modify storage hub:hub navigation_book append value '["- ",{"text":"[","extra":[{"text":"Example"},"]"]}]'
```

`#hub:warp_checks` is responsible for checking if your entry was pressed in the navigation book and joining the player to your game

```mcfunction
execute if score @s warp = GameId ex.Variables run function example:start/join_game
```

### Important function tags

* `#hub:hub` - Is called when players do /trigger hub
* `#hub:help` - Is called when players do /trigger help. You should only show help information for triggers players can actually use
* `#hub:credits` - Is called when players do /trigger credits
* `#hub:inventory_changed` - Is called when a player's inventory changes, primarily useful for optimization

### Gamerules

The following gamerules are forced on by the hub. You should not adjust gamerules for compatibility reasons.

* doImmediateRespawn - true
* keepInventory - true
* fallDamage - false
  * Note that to adjust for this a `hub.fallDmgPercent` objective is provided, which you can use to apply fall damage. Setting it to `100` should roughly replicate vanilla behavior.
* showDeathMessages - false
  * Related to this, if you do create a death message system for your minigame the messages should only display in your custom dimension(s).
* commandBlockOutput - false
* sendCommandFeedback - true

### Parkour

The hub has a built in parkour system you can use. Call `hub:parkour/start` to start parkour tracking and `hub:parkour/end_parkour` to stop tracking and report time. Remove the `Parkour` tag to cancel parkour tracking.

### World Border

Since 1.18, world borders are global, but having a different world border per minigame is neccessary, so to account for this, you can create a marker with the tag `hub.border`, and set its `hub.borderSize` score to create a world border. The size is specified in hundredths of blocks to allow for a smooth transition of sizes. You can also set its `hub.borderChangeLength` and `hub.borderSizeChange` to make the border size change by `hub.borderSizeChange` every tick for `hub.borderChangeLength` ticks.

### Spawn Point

* The hub will automaticly force players to spawn at their spawnpoint even if it is obstructed to prevent them being sent to the overworld when they shouldn't be. Unfortunately this means that instead of the spawnpoint command you must use the `hub:main/death/spawnpoint` function.

### Included Libraries

* [String Utilities](https://github.com/McTsts/Minecraft-String-Utilities) by McTsts, Suso and gibbsly
  * must execute commands in `hub:hub` dimension
* [Player DB](https://github.com/rx-modules/PlayerDB) by rx
* [yellow_shulker_box](https://lanternmc.com/yellow_shulker_box.json)
  * Allows manipulating player inventories via nbt using an override to the yellow_shulker_box loot table so you can use a tool with the tag `drop_contents: 1b` in the loot command to give it's contents (ex. `loot give @s mine 0 0 0 air{drop_contents: 1b}`)

If there is another library you would like added, feel free to create an issue.

## Creating a custom hub

This datapack is not currently designed for custom hubs, however you can modify the structure files to create one.

* `hub:start_block` - The main hub block
* `hub:segment` - The repeating blocks heading out from the main hub that make up the paths to the minigames
* `hub:end` - The block at the end of the repeating segments
* `hub:unavailible` - The minigame entrance used to cap off the entrance if there are an odd number of minigames

Note that adjusting the size of any of these structures may cause problems and if you do so you will also likely need to adjust the entrances to the minigames you use. Other things you would have to adjust:

* The parkour start and end (defined in `hub:main/hub_main`)
* The spawnpoint (defined in `hub:main/hub`)
