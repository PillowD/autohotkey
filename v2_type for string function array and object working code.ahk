;	v2_type for string, function, array and object working code
;    Type returns the class name of a value.
#Requires AutoHotkey v2.0
#SingleInstance Force
;   
b := ""
;   Type    Returns the class name of a value.
msgbox type(b),,"T2" ; String
;
myfunc(b)
{
    b := (A_Index * 2)
    msgbox(b,"T2")
}
msgbox type(myfunc),,"T2" ; Func
;
veg := ["Asparagus", "Broccoli", "Cucumber"]
msgbox Type(veg),,"T2" ; Array
;
nut := {}
nut.1 := "almond"
nut.2 := "brazil nut"
nut.3 := "cashew"
msgbox Type(nut),,"T2" ; Object
;
Esc::ExitApp
ExitApp
#Requires AutoHotkey v2.0
#SingleInstance Force
;   
b := ""
;   Type    Returns the class name of a value.
msgbox type(b),,"T2" ; String
;
myfunc(b)
{
    b := (A_Index * 2)
    msgbox(b,"T2")
}
msgbox type(myfunc),,"T2" ; Func
;
veg := ["Asparagus", "Broccoli", "Cucumber"]
msgbox Type(veg),,"T2" ; Array
;
nut := {}
nut.1 := "almond"
nut.2 := "brazil nut"
nut.3 := "cashew"
msgbox Type(nut),,"T2" ; Object
;
Esc::ExitApp
ExitApp
