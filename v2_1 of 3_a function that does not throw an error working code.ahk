;   a function that does not throw an error
#Requires AutoHotkey v2.0
#SingleInstance Force
;
VNfunction(verb, noun) {
    CheckArg verb, noun
    ;
    CheckArg(verb, noun) {
        MsgBox(verb,noun,"T2")
        ;if verb = noun
        ;    throw ValueError(verb " is the same word as ", noun)
    }
}

VNFunction("verb","noun")
VNFunction("fly","ball")
VNFunction("food type","day of year")
VNFunction("date","date")
;
Esc::ExitApp
ExitApp
