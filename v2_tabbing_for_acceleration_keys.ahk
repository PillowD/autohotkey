;  TIC + Numpad Number to tab that number of times
;  (tic is the key next to number 1 in the top row)
#SingleInstance Force
#Requires Autohotkey v2.0
;
` & Numpad1::Send "{TAB}"
` & Numpad2::Send "{TAB 2}"
` & Numpad3::Send "{TAB 3}"
` & Numpad4::Send "{TAB 4}"
` & Numpad5::Send "{TAB 5}"
` & Numpad6::Send "{TAB 6}"
` & Numpad7::Send "{TAB 7}"
` & Numpad8::Send "{TAB 8}"
` & Numpad9::Send "{TAB 9}"
Esc::ExitApp
/*
Most programs you can tab to get to an action or tab you want
This uses the tic mark (key to the left of the top row 1)
and one of the numpad numbers to tab that number of times.
Helps you keep your hands off the mouse.
*/
