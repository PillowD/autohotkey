; version compare two strings
#SingleInstance Force
#Requires AutoHotkey v2.0
a := "The quick red fox"
b := "lazy brown dog"
c := "lazy brown dog"
MsgBox(VerCompare(a,b),"a vs b","T2") ; -1 = no match
MsgBox(VerCompare(b,c),"b vs c","T2") ; 0 = match
Esc::ExitApp
Exitapp
