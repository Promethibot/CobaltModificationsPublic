-- - TENTATIVE FIX? -
-- Not an addition of code, but a removal

editPopulateOptionalTags = function(def, tags)
		local advs = resources.getAllIndexed("adventure")
		
		for adv_name, adv in pairs(advs) do
		-- Printing out the adv_names reveals double the actual amount in the adventures folder
		-- Might be some sort of issue involving duplication, thus causing a legitimate out of memory error?

		-- It looks like this and the resulting if statement cause the crash
			local flags = adv:getIndexes("textTag")
			
			if flags then
				for text_tag_name, flag in pairs(flags) do
					local tag_name = adv_name .. "_" .. text_tag_name
					
					table.insert(tags, tag_name)
				end
			end
		end
	end ,

-- The above code seems responsible for a memory leak when you try to open a map with the gamemode Story in the editor when there is an adventures folder with stuff inside it.
-- Certain names will be missing from story mode such as Rescue George for the deed in chapter 1 without this, it seems; must test further
