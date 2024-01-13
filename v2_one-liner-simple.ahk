;   sometimes you just one run command.  It's also a good way to practice AHK
SetTitleMatchMode 2
#SingleInstance Force
#Requires AutoHotkey v2.0
;
myvar := InputBox("enter ahk command") ; run "explorer.exe"
;   Don't forget to change the file path to your own
FileAppend("SetTitleMatchMode 2`n","C:\Users\front\Desktop\AHKv2\one-liners\99.ahk")
FileAppend("#SingleInstance Force`n","C:\Users\front\Desktop\AHKv2\one-liners\99.ahk")
FileAppend("#Requires AutoHotkey v2.0`n","C:\Users\front\Desktop\AHKv2\one-liners\99.ahk")
FileAppend(myvar.value,"C:\Users\front\Desktop\AHKv2\one-liners\99.ahk")
FileAppend("`n","C:\Users\front\Desktop\AHKv2\one-liners\99.ahk")
FileAppend("Exitapp`n","C:\Users\front\Desktop\AHKv2\one-liners\99.ahk")
ExitApp
;  This script can't run the one liner because it has to close first
;   Most autohotkey users have a main script where they keep their
;   hotkeys, add a hotkey combination such as this one:
/*
;	Tic mark next to the top row number 1 and 1 at the same time
` & 1:: ; run the one-liner
{
run "C:\Users\front\Desktop\AHKv2\one-liners\99.ahk"
}
*/
;   This simple version needs 99.ahk deleted after you run it each time