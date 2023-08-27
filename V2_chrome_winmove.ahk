#Requires AutoHotkey v2.0
#SingleInstance Force
;   open chrome and put   chrome://version/   in the address bar.  This 
;   will open a page that doesn't do anything and will have the title   About Version
;
Winactivate("About Version")
sleep 2000
WinMaximize("About Version")
sleep 2000
WinRestore("About Version") 
sleep 2000
WinMove(100,100,200,200,"About Version")
sleep 2000
WinMove(200,200,300,300,"About Version")
sleep 2000
WinMinimize("About Version")

Esc::ExitApp
ExitApp
/*
;   WinActivate [WinTitle, WinText, ExcludeTitle, ExcludeText] Activates the specified window.
;   WinMove [X, Y, Width, Height, WinTitle, WinText, ExcludeTitle, ExcludeText] Changes the position and/or size of the specified window.
;   Winrestore [WinTitle, WinText, ExcludeTitle, ExcludeText] Unminimizes or unmaximizes the specified window if it is minimized or maximized.]
;   WinMinimize [WinTitle, WinText, ExcludeTitle, ExcludeText] Collapses the specified window into a button on the task bar.
*/
