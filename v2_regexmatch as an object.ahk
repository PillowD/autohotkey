;    regexmatch as an object
;    examples of .len .count correct brackets etc.
#Requires AutoHotkey v2.0
#Singleinstance Force

preamble := " ; the regexmatch is looking for word 'the', which is here 4 times
(
    We the People of the United States, in Order to form a more perfect Union, establish Justice, insure domestic Tranquility, 
    provide for the common defence, promote the general Welfare, and secure the Blessings of Liberty to ourselves and our Posterity, 
    do ordain and establish this Constitution for the United States of America."
)"
msgbox preamble,,"T2" ;  We the People of the...
msgbox type(preamble),,"T2" ; String 
;   note a variable called matched_start_position and an object called match are created
matched_start_position := RegExMatch(preamble,"the",&match) ;   
msgbox type(matched_start_position),,"T2" ; Integer     matched_start_position is an Integer variable
msgbox matched_start_position,,"T2" ; 4     matched_start_position's value is 4
;   the &match in that line created an object called match at the same times as matched_start_position
;msgbox match,,"T2" ; Error: Parameter #1 of MsgBox requires a String, but received a RegExMatchInfo.  (a a RegExMatchInfo object)
msgbox Type(match),,"T2" ; RegExMatchInfo
;   an object automatically is created with properties like position and length
;   RegExMatch created match_text as an object
msgbox match.pos(),,"T2" ; 4  the first match is the, which is 4 characters into preamble
msgbox match.Len(),,"T2" ; 3  the is 3 characters long
;msgbox match.Count(),,"T2" ;  msgbox match.Count(),,"T2" ;Error: This value of type "RegExMatchInfo" has no method named "Count".
msgbox match.Count,,"T2" ; 0  because we did not set up subcapturing groups
msgbox match[0],,"T2" ; the ; aka the needle if it was found

Esc::ExitApp
ExitApp
/*  There are more object properties but they take some setting up

Match Object (RegExMatchInfo)
If a match is found, an object containing information about the match is stored in OutputVar. 

This object has the following methods and properties:
Match.Pos, Match.Pos[N] or Match.Pos(N): Returns the position of the overall match or a captured subpattern.
Match.Len, Match.Len[N] or Match.Len(N): Returns the length of the overall match or a captured subpattern.
Match.Name[N] or Match.Name(N): Returns the name of the given subpattern, if it has one.
Match.Count: Returns the overall number of subpatterns (capturing groups), which is also the maximum value for N.
Match.Mark: Returns the NAME of the last encountered (*MARK:NAME), when applicable.

Match[] or Match[N]: Returns the overall match or a captured subpattern.

All of the above allow N to be any of the following:

0 for the overall match.
The number of a subpattern, even one that also has a name.
The name of a subpattern.
Match.N: Shorthand for Match["N"], where N is any unquoted name or number which does not conflict with a defined property (listed above). For example, match.1 or match.Year.

The object also supports enumeration; that is, the for-loop is supported. Alternatively, use Loop Match.Count.
*/
