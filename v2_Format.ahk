;   Format working code
#Requires AutoHotkey v2.0
#SingleInstance Force
;   SortedString := Sort(String , [Options, Callback])
;   1 = take the first of the list of values  :U = make it upper case
s := ""
s .= Format("{1:U}", "aaa", "bbb", "ccc") ; AAA  
msgbox s,,"T2"
;
s := ""
s .= Format("{1:U}" "{1:U}", "aaa", "bbb", "ccc") ; AAAAAA
msgbox s,,"T2"
;
s := ""
s .= Format("{1:U}" " " "{1:U}", "aaa", "bbb", "ccc") ; AAA AAA
msgbox s,,"T2"
;
s := ""
s .= Format("{1:U}" "{2}" "{1:U}", "aaa", "bbb", "ccc") ; AAAbbbAAA
msgbox s,,"T2"
;
s := ""
s .= Format("{1:05}", "aaa", "bbb", "ccc") ; 00aaa
msgbox s,,"T2"
;
s := ""
s .= Format("{1:25}", "aaa", "bbb", "ccc") ;           aaa
msgbox s,,"T2"
;
s := ""
s .= Format("{1:-25}", "aaa", "bbb", "ccc") ;aaa
msgbox s,,"T2"

Esc::ExitApp
