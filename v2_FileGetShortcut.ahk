;	v2_FileGetShortcut example
#Requires AutoHotkey v2.0
#SingleInstance Force
;
FileGetShortcut "C:\Users\front\Desktop\test - Shortcut.lnk", &OutTarget, &OutDir, &OutArgs, &OutDescription, &OutIcon, &OutIconNum, &OutRunState
out := &OutTarget
dir := &OutDir
args := &OutArgs
des := &OutDescription
icon := &OutIcon
iconnum := &OutIconNum
runstate := &OutRunState

MyGui := Gui(, "Test Folder Shortcut")
MyGui.Opt("+AlwaysOnTop +Disabled -SysMenu +Owner")  ; +Owner avoids a taskbar button.
MyGui.Add("Text",, "OutTarget= " %out%)
MyGui.Add("Text",, "OutDir= " %dir%)
MyGui.Add("Text",, "OutArgs= " %args%)
MyGui.Add("Text",, "OutDescription= " %des%)
MyGui.Add("Text",, "OutIcon= " %icon%)
MyGui.Add("Text",, "OutIconNum= " %iconnum%)
MyGui.Add("Text",, "OutRunState= " %runstate%)
MyGui.Show("NoActivate")  ; NoActivate avoids deactivating the currently active window.

sleep 5000
MyGui.Destroy
;   right click on the shortcut > click on Properties, then
;   Change Target: to C:\WINDOWS\explorer.exe /select,"C:\Users\front\Desktop\test\hello.txt"
;   Change Start in: to C:\Users\front\Desktop\test (your computr won't be named front though)
;   You can add a shortcut key, but this script won't detect it
;   Change Run: to Maximized
;   Change Comment: to Hello There
;   Click on Change Icon: and change the icon

;   Then run this script again.

Esc::ExitApp
ExitApp
