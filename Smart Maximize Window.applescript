(*
  One of the annoyances of MacOS is that 'zoom' tries to be smart and size the window
  to the content rather than maximize the window to fill the screen. This script
  maximizes the front window if it is not already zoomed, otherwise will zoom
  the front window by setting 'zoomed' to false
 
  Bind to CMD-CTRL-Z using something like Keyboard Maestro for maximum effectiveness. 
*)
tell application (path to frontmost application as string) to set is_zoomed to zoomed of front window

if is_zoomed = true then
	tell application (path to frontmost application as string) to set zoomed of front window to false
else
	tell application "Finder" to set screen_resolution to bounds of window of desktop
	(*
	   This will actually set the application to less than the screen bounds as
	   the application window will not be placed over the menu bar or the Dock. 
	*)
	tell application (path to frontmost application as string) to set bounds of front window to screen_resolution
end if
