
-- At some point Apple added the 'Album Artist' tag to iTunes. This  is a very useful 
-- way of handling guest appearances on albums or pseudo compilation albums 
-- like ('The Best of Roxy Music and Brian Ferry' or albums with an insane 
-- number of guest stars). 
-- 
-- This script backfills the 'Album Artist' tag for any non compilation album that 
-- are empty. 
-- 
-- There may be more efficient ways to do this.

tell application "iTunes"
	set listOfTracks to every track of playlist "Music" whose compilation is false and album artist is ""
	set numberOfTracks to (length of listOfTracks)
	set artistsFound to 0
	
	repeat with i from 1 to numberOfTracks
		if album artist of item i of listOfTracks is "" then
			set album artist of item i of listOfTracks to get artist of item i of listOfTracks
			set artistsFound to artistsFound + 1
		end if
	end repeat
	
	display dialog "Number of empty Album Artists updated: " & artistsFound buttons {"OK"}
end tell
