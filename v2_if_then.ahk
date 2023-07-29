;    IF working code
;
#Requires AutoHotkey v2.0
#Singleinstance Force
;
; True and False are defined as constants for readability
; Variables/constants are not case sensitive
;
if (true)
{
    MsgBox("True is defined as " . true . "`n")
}
;
if (not false)
{
    MsgBox("False is defined as " . false . "`n")
}
;
; Empty strings and 0 are considered False
; Everything else (including objects) are True
;
if (not "")
{
    Msgbox("An emptry string is False`n")
}
ExitApp
