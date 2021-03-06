# Hub

The datapack used for the PRIMD server hub at `play.primd.net`. You can also use it to create your own hub with other or less minigames. Note this is only a base module and you will also need the datapacks for the minigames. This repo, as well as all the minigames are licenced under the MIT liscence, meaning you can use them for any purpose without restriction.

## Minigame Library

|                        Name                                 | Description
| ----------------------------------------------------------- | ------------
| [Missile Mayhem](https://github.com/primd-os/MissileMayhem) | A missilewars type minigame with multiple missile sets and gamemodes
| [Bridge World](https://github.com/primd-os/BridgeWorld)     | A world where you can build with wool
| [Bridge Fight](https://github.com/primd-os/bridgefight)     | A minigame similar to hypixel's bridge duels except placing blocks is limited leading to strategy
| [Ice Boom](https://github.com/primd-os/iceexplosion)        | A minigame to survive the longest on a platform of decaying ice where destroyed ground becomes ice and you can cause explosions
| [HubVanilla](https://github.com/primd-os/HubVanilla)        | Allows access to overworld via hub system

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
* Because you have to use a custom dimension everything must be constructed by your datapacks because you can't use a world download. The easiest way to do this is via structure blocks.
* To prevent overlap of scoreboard variables prefix them. For example Missile Mayhem prefixes its scoreboards with `m.`. The exeption to this is triggers for usability purposes.
* It is also recommended to do the same prefixing with tags.
* The hub uses [Lantern Load](https://github.com/LanternMC/Load). You don't have to use this but it is recommended.

### Crucial Steps

`#hub:doorway` should contain a function that adds the name of your doorway structure to the storage hub:hub doorways.

```mcfunction
data modify storage hub:hub doorways append value "bridgeworld:doorway"
```

`#hub:register_dimensions` should contain a function that checks if `rx:io playerdb.player.data.primd.hub.spawnDim` matches the name of a custom dimension of your minigame and if it does then executes `hub:main/death/warp` in that dimension.

```mcfunction
execute if data storage rx:io playerdb.player.data.primd.hub{spawnDim:"bridgeworld:bridgeworld"} in bridgeworld:bridgeworld run function hub:main/death/warp
```

### Important function tags

* `#hub:hub` - Is called when players do /trigger hub
* `#hub:inventory_changed` - Is called when a player's inventory changes, primarily useful for optimization

### Gamerules

The following gamerules are forced on by the hub

* doImmediateRespawn - true
* keepInventory - true

### Parkour

The hub has a built in parkour system you can use. Call `hub:parkour/start` to start parkour tracking and `hub:parkour/end_parkour` to stop tracking and report time. Remove the `Parkour` tag to cancel parkour tracking.

### Other Notes

* The hub will automaticly force players to spawn at their spawnpoint even if it is obstructed to prevent them being sent to the overworld when they shouldn't be.

### Included Libraries

* <https://github.com/McTsts/Minecraft-String-Utilities> must execute commands in `hub:hub` dimension
* <https://github.com/rx-modules/PlayerDB>

## Creating a custom hub

This datapack is not currently designed for custom hubs, however you can modify the structure files to create one.

* `hub:start_block` - The main hub block
* `hub:segment` - The repeating blocks heading out from the main hub that make up the paths to the minigames.
* `hub:end` - The block at the end of the repeating segments
* `hub:unavailible` - The minigame entrance used to cap off the entrance if there are an odd number of minigames.

Note that adjusting the size of any of these structures may cause problems and if you do so you will also likely need to adjust the entrances to the minigames you use. Other things you would have to adjust:

* The parkour start and end (defined in `hub:main/hub_main`)
* The spawnpoint (defined in `hub:main/hub`)
