;	multi line variable continuation
#Requires AutoHotkey v2.0
#SingleInstance Force
;
a := "   ;   double quote has to be only character following :=
(   ;   left paren has to be on its own line
As I learned AutoHotkey I wrote about each step and passed along my
insights to interested ComputorEdge readers. That was the genesis of this
first beginning book. Afterall, I was a beginner myself. In reviewing the
book for this third edition, I looked at it with a more experienced eye. I now
have more insight which was lacking when I first ventured into AutoHotkey
scripting. I wanted to ensure this first book took advantage of my greater
level of expertise. This time I've scoured every word of each chapter
looking for mistakes or misleading comments. At a minimum, I've
addressed more of the nuances of AutoHotkey.
)"  ;  right paren and double quote can be on one line
;
msgbox(a,,"T2")

/*
b := "  ;    (50) : ==> Invalid option.
(The Absolutely Best Free Windows Utility
    Software Ever!
*/

b :=
"   ;   double quote on its own line works too
(
    The Absolutely Best Free Windows Utility
    Software Ever!
    Over the last few years, I've been working with AutoHotkey and saying that
    it is "possibly the best free Windows utility software ever." I've since
    dropped the "possibly" and state emphatically that AutoHotkey is
    absolutely the best free Windows utility software ever! If you learn a little
    scripting (it's not that hard) and work with AutoHotkey, then you will be
    able implement many little Windows solutions to common problems—
    making you that company computer superhero.
)"

msgbox(b,,"T2")

Esc::ExitApp
ExitApp
