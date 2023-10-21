;	V2_square array how to fill and read from an array
#Requires AutoHotkey v2.0
#SingleInstance Force
;
a := "
(
    1,1,1,1,
    1,0,0,1,
    1,0,0,1,
    1,1,1,1,
    
)"
;   create an array called square
square :=  []
;   fill it with ones and zeros
Loop parse a , ","
square.InsertAt(A_Index, A_LoopField)
;
loop 16
MsgBox(square[A_Index],A_Index,"T2")

;   loop 17 is blank
;   loop 18 is Error: Invalid index
;   if you delete the last comma loop 17 has the invalid index
Esc::ExitApp
ExitApp
