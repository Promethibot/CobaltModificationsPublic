# Known Issues
These are currently known issues, ideally with an idea as to what the cause is. Issues with a community-made fix will be formatted with ~~strikethrough~~. Issues officially fixed will be placed under the "Officially Fixed" category.

## Catastrophic Issues
- Spamming "Generate new galaxy" will corrupt galaxy.meta and will not be resolved by verifying the game's files. Only solutions are to replace the file with a functioning galaxy.meta or to delete it and hope the game regenerates it.
- ~~Using unintended characters in the "pattern" light behavior will corrupt the map entirely.~~ See fix [here](https://github.com/Promethibot/CobaltModificationsPublic/blob/71ac3f2f9d11c599803000c691088b3cf377591b/bugfixes/lightBehaviours.lua)
- Tiles in multiplayer will not update for clients, only the host. Can result in map hazards not being visible to clients.
- Chapter 2 can still occasionally generate Trapper Caves with no exit, meaning the map (and therefore, the run) can be soft-locked.

## Impediments
- actorTalk does not work for clients in multiplayer, only hosts
- ~~TeamStrike survival in a row achievements broken.~~ Creep has proposed two solutions, see solution 1 [here](https://discord.com/channels/144498931785531392/144503896130322432/1225580650204237824) and solution 2 [here](https://discord.com/channels/144498931785531392/144503896130322432/1226152550202474578). Attempted diagnostic can be found [here](https://docs.google.com/document/d/1l8HXXJKDsWOur4n_rrcP5kYj9DAJNzbLE4IQ6z9PdrA/edit?usp=sharing).
- *Respectable in All Aspects* is broken and will not unlock even if requirements satisfied
- Maps using the "story" gamemode will fail to load if the "adventures" folder exists and is populated with adventures. See attempt to fix [here](https://github.com/Promethibot/CobaltModificationsPublic/blob/71ac3f2f9d11c599803000c691088b3cf377591b/bugfixes/modeStory.lua)
- Dedicated servers can only be connected to if you use launch parameters. They will not show up in the server browser.
- Using certain characters in text fields like notes and signs will wipe localisation files entirely. Use two apostrophes (') in place of quotation marks in the meantime. Creep diagnosed issue as maps not properly saving escape characters
- Achievements unlocked in the demo will not be unlocked in the full game. User deltafoxtrot36 found a workaround and it can be found [here](https://discord.com/channels/144498931785531392/144503896130322432/1225550938920718416).

## Not major
- Editor crashes if scrolling through tile browser too quickly
- Statistics for TeamStrike and PlugSlam do not work
    - TS: Kills, Deaths, Assists, Matches Won, Matches Lost, Combo-kills, Multi-kills, Wipes
    - PS: Kills, Deaths, Assists, Plugs Scores
- Steam usernames occasionally fail to display in multiplayer lobbies and instead opt for the user ID
- Light pattern in tutorial secret is faulty and the solution does not match the shown pattern. Pattern will display only once and then not display anymore.
- *Ain't No Thang* has an inaccurate description; achievement is earned by tanking homing missiles with a shieldbelt. Reported by Agent Lupine and diagnosed by Creep.

# Officially Fixed
