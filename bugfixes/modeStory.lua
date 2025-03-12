/*
	Short description of bug: editors using the developer mode will experience a memory leak and crash upon opening maps using the gamemode Story if you have a folder named "adventures" in your Cobalt directory.
	This only applies to when you try to view the map in the editor.
	If you play the main story via the editor and arrive at a map using the gamemode (e.g. The Seed), it will load and run just fine.
	Cannot recall if adventures folder needed to be populated for the bug to occur; folder must be named adventures; quick circumvention to view the map would be to just rename it adventuress or something else.
*/

-- Issue seems localized to this function
editPopulateOptionalTags = function(def, tags)
		local advs = resources.getAllIndexed("adventure")
		
		for adv_name, adv in pairs(advs) do
		
		-- NON-DEVELOPER EDIT
		if not states.get("edit") then -- Crash only happens if you're trying to view it in the editor
			local flags = adv:getIndexes("textTag") -- culprit? memoryLeak when enabled
			
			if flags then
				for text_tag_name, flag in pairs(flags) do
					local tag_name = adv_name .. "_" .. text_tag_name
					
					table.insert(tags, tag_name)
				end
			end
		end
		-- END NON-DEVELOPER EDIT
		end
	end ,

-- The above code seems responsible for a memory leak when you try to open a map with the gamemode Story in the editor when there is an adventures folder with stuff inside it.
-- Certain names are missing from story mode such as Rescue George for the deed in chapter 1, with or without this change; still need to test other tags like logs
