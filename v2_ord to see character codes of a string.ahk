;   v2_ord to see character codes of a string
;   uncomment 1 of the b's at at a time to see how different ones parse
#Requires AutoHotkey v2.0
#SingleInstance Force
b := "te		st" ; test with tabs 
;b := "乒	乓	乔	乕	乖	乗	乘	乙	乚" ; random chinese chars, not "te xt"
;b := "ⓣⓔ		ⓢⓣ"

loop parse b
{
MsgBox(Ord(A_LoopField),,"T2")
}
;
Esc::ExitApp
ExitApp

/*
This function returns the ordinal value (numeric character code) of the first character in the specified string. 
If the string is empty, zero is returned. If the string begins with a Unicode 
supplementary character, this function returns the corresponding Unicode character code (a number between 0x10000 and 0x10FFFF). 
Otherwise it returns a value in the range 0 to 0xFF (for ANSI) or 0 to 0xFFFF (for Unicode). See Unicode vs ANSI for details.

AutoHotkey v2 natively uses Unicode (UTF-16), but some external libraries or window messages might require ANSI strings.

ANSI: Each character is one byte (8 bits). Character codes above 127 depend on your system's language settings 
(or the codepage chosen when the text was encoded, such as when it is written to a file).

Unicode: Each character is two bytes (16 bits). Character codes are as defined by the UTF-16 format.

Common character codes include 9 (tab), 10 (linefeed), 13 (carriage return), 32 (space), 48-57 (the digits 0-9), 
65-90 (uppercase A-Z), and 97-122 (lowercase a-z).

AutoHotkey include ASCII as a subset, character codes 0 to 127 always have the same meaning.
/*
 
