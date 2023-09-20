;	is functions "is a variable...
#Requires AutoHotkey v2.0
#SingleInstance Force

MsgBox(IsSet(a),"apple","T2") ; 0
a := ""
MsgBox(IsSet(a),"berry","T2") ; 1
MsgBox(Type(a),"cherry","T2") ; String
a := unset
MsgBox(IsSet(a),"date","T2") ; 0
;MsgBox(Type(a),"egg","T2") ; Error: This variable has not been assigned a value.
a := ""
MsgBox(IsInteger(a),"fish","T2") ; 0
MsgBox(IsFloat(a),"gum","T2") ; 0
MsgBox(IsNumber(a),"humus","T2") ; 0
MsgBox(IsObject(a),"ice","T2") ; 0
MsgBox(IsLabel(a),"jerky","T2") ; 0
MsgBox(IsSet(a),"kabob","T2") ; 1
;MsgBox(IsSetRef(a),"lemon","T2") ; Error: Parameter #1 of IsSetRef requires a variable reference, but received an empty string.
MsgBox(IsDigit(a),"mango","T2") ; 1
MsgBox(IsXDigit(a),"noodle","T2") ; 1
MsgBox(IsAlpha(a),"onion","T2") ; 1
MsgBox(IsUpper(a),"pear","T2") ; 1
MsgBox(IsLower(a),"quaker oats","T2") ; 1
MsgBox(IsAlnum(a),"ramen","T2") ; 1
MsgBox(IsSpace(a),"steak","T2") ; 1
MsgBox(IsTime(a),"tea","T2") ; 0

a := "2023"
MsgBox(IsSet(a),"apple2023","T2") ; 1
MsgBox(Type(a),"cherry2023","T2") ; String
MsgBox(IsInteger(a),"fish2023","T2") ; 1
MsgBox(IsFloat(a),"gum2023","T2") ; 0
MsgBox(IsNumber(a),"humus2023","T2") ; 1
MsgBox(IsObject(a),"ice2023","T2") ; 0
MsgBox(IsLabel(a),"jerky2023","T2") ; 0
MsgBox(IsDigit(a),"mango2023","T2") ; 1
MsgBox(IsXDigit(a),"noodle2023","T2") ; 1
MsgBox(IsAlpha(a),"onion2023","T2") ; 0
MsgBox(IsUpper(a),"pear2023","T2") ; 0
MsgBox(IsLower(a),"quaker oats2023","T2") ; 0
MsgBox(IsAlnum(a),"ramen2023","T2") ; 1
MsgBox(IsSpace(a),"steak2023","T2") ; 0
MsgBox(IsTime(a),"tea2023","T2") ; 1
a := "food"
MsgBox(IsSet(a),"apple food","T2") ; 1
MsgBox(Type(a),"cherry food","T2") ; String
MsgBox(IsInteger(a),"fish food","T2") ; 0
MsgBox(IsFloat(a),"gum food","T2") ; 0
MsgBox(IsNumber(a),"humus food","T2") ; 0
MsgBox(IsObject(a),"ice food","T2") ; 0
MsgBox(IsLabel(a),"jerky food","T2") ; 0
MsgBox(IsDigit(a),"mango food","T2") ; 0
MsgBox(IsXDigit(a),"noodle food","T2") ; 0
MsgBox(IsAlpha(a),"onion food","T2") ; 1
MsgBox(IsUpper(a),"pear food","T2") ; 0
MsgBox(IsLower(a),"quaker oats food","T2") ; 1
MsgBox(IsAlnum(a),"ramen food","T2") ; 1
MsgBox(IsSpace(a),"steak food","T2") ; 0
MsgBox(IsTime(a),"tea food","T2") ; 0

Esc::ExitApp
ExitApp
