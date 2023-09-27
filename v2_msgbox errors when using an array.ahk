;	Msgbox errors when using an array
#Requires AutoHotkey v2.0
#SingleInstance Force
;
veg := ["Asparagus", "Broccoli", "Cucumber"]
;msgbox veg ;    Error: Parameter #1 of MsgBox requires a String, but received an Array.
;msgbox [] ;     Error: Parameter #1 of MsgBox requires a String, but received an Array.
;MsgBox([]) ;    Error: Parameter #1 of MsgBox requires a String, but received an Array.
;msgbox [0] ;    Error: Parameter #1 of MsgBox requires a String, but received an Array.
;msgbox [1]  ;    Error: Parameter #1 of MsgBox requires a String, but received an Array.
msgbox (1)  ;   1
;msgbox veg[] ; Error: Too few parameters passed to function.
;msgbox veg([]) ;   Error: This value of type "Array" has no method named "Call".
;msgbox veg[()] ;   : ==> Syntax error.
msgbox veg[1]   ;   Asparagus
;msgbox veg(1)   ;  Error: This value of type "Array" has no method named "Call".
;msgbox veg([1]) ;  Error: This value of type "Array" has no method named "Call".
msgbox veg[2]   ;   Broccoli
msgbox veg[3]   ;   Cucumber
;msgbox veg[4]   ;  Error: Invalid index.
msgbox veg.length  ;     3
;msgbox [veg.length] ;  Error: Parameter #1 of MsgBox requires a String, but received an Array.
msgbox (veg.length) ;   3
msgbox veg.Capacity ;   3
;msgbox veg.Default ;   Error: This value of type "Array" has no property named "Default".
veg.Default := "Asparagus"
msgbox veg.Default ;    Asparagus
MsgBox veg[-3] ;    Asparagus
MsgBox veg[-2] ;    Broccoli
MsgBox veg[-1] ;    Cucumber

Esc::ExitApp
ExitApp
