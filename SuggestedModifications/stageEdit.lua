-- The following code provides for a timer-based autosave
-- Code should be placed in the StageEdit:update(time) function before self:super().postUpdate(self, time)

		-- Time elapsed does not include tile browser time; it pauses there
			if self.autoBackups then
			-- Check is redundant since saveBackups also checks but feels weird without it
			-- Set to 120 seconds for 2 minutes
			-- Might work best with a global or config, especially since each editor seems to have its own autoBackups variable
				if (os.clock() % 120 == 0) then
					self:saveBackups()
					print("Backup saved!")
				end
			end
