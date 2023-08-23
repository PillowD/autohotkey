#Requires AutoHotkey v2.0
#SingleInstance Force
;
;   A_Args is the command line parameter
;   after saving the file, type win R to open the run dialog
;   c:\path to file v2_command_line_parmeter.ahk then hello after it
;     "C:\Users\mycomputer\Desktop\AHKv2\v2_command_line_parameter.ahk" hello
;
msgbox A_Args[1],,"T2" ; Hello
;   "C:\Users\mycomputer\Desktop\AHKv2\v2_command_line_parameter.ahk" Hello There General Grievous.
msgbox A_Args[2],,"T2" ; There
msgbox A_Args[3],,"T2" ; General 
msgbox A_Args[4],,"T2" ; Grievous.

text := A_Args[1] . " " . A_Args[2] . " " . A_Args[3] . " " . A_Args[4]
msgbox text ; ; hello there general grievous.

Esc::ExitApp
ExitApp
