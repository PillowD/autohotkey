;   Report cursor type when you click the mouse
;
#Requires Autohotkey v2.0
#SingleInstance Force
;
;   Ctrl Z to start, then click somewhere
;
^z::	if (A_Cursor = "Ibeam"){

        MsgBox A_Cursor
    }
;

Esc::Exitapp
