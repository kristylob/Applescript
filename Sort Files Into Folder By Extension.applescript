--
-- Purpose
-- -------
-- Sort Files into Folder By Extension
-- 
-- Purpose: You have folder full of files with various extensions 
-- and you want to sort the files into folders, one folder for 
-- each distinct extension.
--
-- Usage: Select the Folder you want to sort in Finder and run 
-- the script.
--
-- As ever there may be more efficient ways to do this.
--
-- Bugs
-- ---- 
-- Does not handle folders with sub-folders.

tell application "Finder"
	set selected to selection
	set current_folder to item 1 of selected
	set mlist to every file of current_folder
	repeat with this_file in mlist
		set cur_ext to name extension of this_file
		if (exists folder cur_ext of current_folder) is false then
			make new folder with properties {name:cur_ext} at current_folder
		end if
		move this_file to folder cur_ext of current_folder
	end repeat
end tell