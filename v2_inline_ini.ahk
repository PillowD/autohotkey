;   save ini vales inside the script
#Requires AutoHotkey v2.0
#SingleInstance Force
;============================== Start Auto-Execution Section ==============================
;   When the script starts, it reads the counter key of the SavedVariables section
;   stored in this script. This helps "remember" the value of counter.
;
;============================== Main Script ==============================
{
;   counter is stored in comment below.  It increments whenever the script is run.  
    counter := IniRead(A_ScriptFullPath, "SavedVariables", "counter")    ; read counter
    msgbox counter,,"T2" ; show counter for 2 seconds
    ++counter ; increment counter
;
; This will write the current counter to the counter key in the SavedVariables section
; of this script.
;
    IniWrite(counter,A_ScriptFullPath, "SavedVariables", "counter") ; write counter
}
; You can put your ini section inside of a multi-line comment.
/*
This is an ini saved variable section. You can write whatever you want here because AHK sees it as a comment.
Anything [insideBrackets] starts a new section. This is what the script looks for when dealing with ini files.
[SavedVariables]
counter =7
*/
;============================== End Script ==============================
