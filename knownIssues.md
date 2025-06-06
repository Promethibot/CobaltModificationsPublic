# Known Issues

## Catastrophic Issues
- Spamming "Generate new galaxy" will corrupt galaxy.meta and will not be resolved by verifying the game's files
- ~~Using unintended characters in the "pattern" light behavior will corrupt the map entirely.~~ See fix [here](https://github.com/Promethibot/CobaltModificationsPublic/blob/71ac3f2f9d11c599803000c691088b3cf377591b/bugfixes/lightBehaviours.lua)
- Tiles in multiplayer will not update for clients, only the host. Can result in map hazards not being visible to clients.

## Impediments
- actorTalk does not work for clients in multiplayer, only hosts
- TeamStrike survival in a row achievements broken
- "Respectable in All Aspects" is broken and will not unlock even if requirements satisfied
- Maps using the "story" gamemode will fail to load if the "adventures" folder exists and is populated with adventures. See attempt to fix [here](https://github.com/Promethibot/CobaltModificationsPublic/blob/71ac3f2f9d11c599803000c691088b3cf377591b/bugfixes/modeStory.lua)

## Not major
- Editor crashes if scrolling through tile browser too quickly
- Statistics for TeamStrike and PlugSlam do not work
    - TS: Kills, Deaths, Assists, Matches Won, Matches Lost, Combo-kills, Multi-kills, Wipes
    - PS: Kills, Deaths, Assists, Plugs Scores
- Steam usernames occasionally fail to display in multiplayer lobbies and instead opt for the user ID
- Light pattern in tutorial secret is faulty