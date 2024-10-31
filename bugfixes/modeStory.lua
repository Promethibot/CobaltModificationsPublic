-- - TENTATIVE FIX? -
-- Not an addition of code, but a removal

editPopulateOptionalTags = function(def, tags)
		local advs = resources.getAllIndexed("adventure")
		
		for adv_name, adv in pairs(advs) do
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
-- So far, testing seems to not have broken anything, but it warrants further testing. Tentative fix for now.
