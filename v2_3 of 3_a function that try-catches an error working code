;   a function that throws an error
#Requires AutoHotkey v2.0
#SingleInstance Force

VNfunction(verb, noun) {
    CheckArg verb, noun
    ;
    CheckArg(verb, noun) {
        MsgBox(verb,noun,"T2")
        if verb = noun
            throw ValueError(verb " is the same word as ", noun)
    }
}
;
try
    VNFunction("verb","noun")
catch ValueError as err
    MsgBox(("err.message"),,"T2")
;
try
VNFunction("fly","ball")
catch ValueError as err
    MsgBox(("err.message"),,"T2")
;
try
VNFunction("food type","day of year")
catch ValueError as err
    MsgBox(("err.message"),,"T2")
;
try
VNFunction("date","date")
catch ValueError as err
    MsgBox((err.message),,"T2")
;
; the script does not halt after the error
;  exit code=0
Esc::ExitApp
ExitApp
