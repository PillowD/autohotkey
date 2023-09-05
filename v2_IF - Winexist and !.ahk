;	If - Winexist and !
#Requires AutoHotkey v2.0
#SingleInstance Force
;   open chrome and put   chrome://version/   in the address bar.  This 
;   will open a page that doesn't do anything and will have the title   About Version
;
;WinActivate("About Version")
if  WinExist("About Version")
	{
	msgbox "yes it does exist","window open with winexist","T2"
}
;	Logical-not (!) makes it mean the opposite
if  !WinExist("About Version")
	{
	msgbox "No it doesn't exist","window open with !winexist","T2"
}
;	The word not can be used too.
;
if  not(WinExist("About Version"))
	{
	msgbox "No it doesn't exist","window open with not winexist","T2"
}
;  close the chrome window and run the script again
Esc::ExitApp
ExitApp
