;  Creat a simple log file for autohotkey
SetTitleMatchMode 2
#SingleInstance Force
#Requires AutoHotkey v2.0
;   Create 2 directories to practce on
SourceDirectory := "C:\Users\front\OneDrive\Documents\SourceDirectory"
LogDirectory := "C:\Users\front\OneDrive\Documents\LogDirectory"
;   "C:\Users\front\OneDrive\Documents\LogDirectory\v2_simple_log_file.ahk"
;
Loop Files, SourceDirectory "\*.*", "FDR"
{
    CurrentLoopFile := A_LoopFileFullPath 
    FileAppend("CurrentLoopFile= " CurrentLoopFile "`n","C:\Users\front\OneDrive\Documents\LogDirectory\SimpleLog.txt")
}
Esc::ExitApp
ExitApp
/*
Create a source directory and put a few files in it:
"C:\Users\front\OneDrive\Documents\SourceDirectory\General.txt"
"C:\Users\front\OneDrive\Documents\SourceDirectory\Grievous.txt"
"C:\Users\front\OneDrive\Documents\SourceDirectory\hello.txt"
"C:\Users\front\OneDrive\Documents\SourceDirectory\there.txt"

The AHK file can be anywhere, keeping it in the log directory for now

Result:
"C:\Users\front\OneDrive\Documents\LogDirectory\SimpleLog.txt"
CurrentLoopFile= C:\Users\front\OneDrive\Documents\SourceDirectory\General.txt
CurrentLoopFile= C:\Users\front\OneDrive\Documents\SourceDirectory\Grievous.txt
CurrentLoopFile= C:\Users\front\OneDrive\Documents\SourceDirectory\hello.txt
CurrentLoopFile= C:\Users\front\OneDrive\Documents\SourceDirectory\there.txt
*/
