;  Sort a string of comma seperated letters working code
#Requires AutoHotkey v2.0
#SingleInstance Force
t := "z,b,c,d,e,f,g,h"
;
;   D, = seperate on the commas
;   no other options = alphabetical
SortedString := Sort(t, "D,") ; b,c,d,e,f,g,h,z
msgbox sortedstring,,"T2"
;
;   R = Reverse
SortedString := Sort(t, "R D,") ; z,,h,g,f,e,d,c,b
msgbox sortedstring,,"T2"
;
;   Random
SortedString := Sort(t, "Random D,") ; d,b,c,z,e,f,g,h
msgbox sortedstring,,"T2"

Esc::Exitapp
ExitApp
