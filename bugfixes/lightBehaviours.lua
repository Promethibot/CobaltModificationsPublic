-- Bugfix for the "pattern" light behaviour corrupting maps if there's an invalid character in the pattern field, along with new description

-- Place following code under default = "9050", in LIGHT_BEHAVIOURS.pattern
-- Adds warning that non-integers will be stripped from the string
			info = "0 = off, 9 = max; non-integers will be removed!",

-- Place following code in onClassify under if values.pattern then
			if string.find(values.pattern, "[^%d]+") then
      -- Check if any character is not a numerical digit, then strip it from the string
			local fixedStr, replaced = string.gsub(values.pattern, "[^%d]+", "")
			-- Code attribution: https://stackoverflow.com/questions/62647752/lua-string-drop-non-alphanumeric-or-space
			values.pattern = fixedStr
				print("No non-integer values, sorry! Pattern has been set to " .. values.pattern .. ".")
				-- Let the user know what was changed and why
			end
