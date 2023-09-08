;	Msgbox for object keys values and properties
#Requires AutoHotkey v2.0
#SingleInstance Force
;
nut := {}
;
nut.1 := "almond"
;   MsgBox(nut.2,,"T2") ;Error: This value of type "Object" has no property named "2".
nut.2 := "brazil nut"
nut.3 := "cashew"
MsgBox(nut.1,,"T2") ; almond
MsgBox(nut.2,,"T2") ; brazil nut
MsgBox(nut.3,,"T2") ; cashew
;
MsgBox(IsObject(nut),,"T2") ; 1 = true
MsgBox(nut.HasOwnProp(1),,"T2") ; 1 = true
MsgBox(nut.HasOwnProp(5),,"T2") ; 0 = false
MsgBox(ObjOwnPropCount(nut),,"T2") ; 3
MsgBox(ObjGetCapacity(nut),,"T2") ; 4
;
; note this loop uses the := operator not .=
s := ""
for k, v in nut.OwnProps() ; think k = key and v = value
    MsgBox(s := k "=" v "`n",,"T2") ; 1 = "almond", 2 = "brazil nut", 3 = "cashew"
;
; note this loop uses the .= operator not :=
s := ""
for k, v in nut.OwnProps()
    s .= k "=" v "`n"
MsgBox(s,,"T2")
; 1 = "almond"
; 2 = "brazil nut"
; 3 = "cashew"


obj := ""  ; Releases the last reference, and therefore frees the object.


Esc::ExitApp
ExitApp
