;   v2 ByRef & and DeRef % %
#Requires AutoHotkey v2.0
#Singleinstance Force
;
a := "Hello "
msgbox(a,,"T2")
;   Reference (&): Creates a VarRef, which is a value representing a reference to a variable.
;msgbox(&a,,"T2") ; Error: Parameter #1 of MsgBox requires a String, but received a VarRef.
b:= &a 
MsgBox(Type(b),,"T2") ; VarRef
MsgBox(IsObject(b),,"T2") ; 1
;msgbox(b,,"T2") ; Error: Parameter #1 of MsgBox requires a String, but received a VarRef.
c := "there."
d := &c
;
msgbox((%b%),,"T2") ; Hello  
MsgBox((%d%),,"T2") ; there.
e := "General "
b := &e
f := "Greivous."
d := &f
msgbox((%b%),,"T2") ; General
MsgBox((%d%),,"T2") ; Greivous.
;
Esc::ExitApp
ExitApp
