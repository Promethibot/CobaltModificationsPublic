-- - TENTATIVE FIX? -
-- Not an addition of code, but a removal

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
