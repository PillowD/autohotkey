#Requires AutoHotkey v2.0
#SingleInstance Force
;
WorkingText := IniRead(A_ScriptFullPath, "SampleText") ; text is in the comment below

;   only uncomment 1 loop parse workingtext at a time

loop parse workingtext ; every letter H o m e S
;loop parse workingtext, A_Tab ; on the tabs
;loop parse workingtext, A_Space ; on the spaces
;loop parse workingtext, "`n" ; on the newline
;loop parse workingtext,,"aeiouy" ; parse every letter, omit all the lower case vowels
;loop parse workingtext, "aeiouy" ; on the vowels
    {
        MsgBox A_LoopField,,"T2"
    } 

Esc::ExitApp
ExitApp
/*  The sample text is stored in-line to make it easier to see how it works
To see hidden characters try pasting your text at regex101 dot com
[SampleText]
HomeSales ManagementProduction ManagementMaterials Links
To get additional help with this form, hover the mouse over the data
Audit	Turn	JobType	DL	BOM	CKC	KC	PCB	PRG	Stn	TA	LRD	Audited	MF	DT	PK	SP	BM	BP	MFG	DueDate
123Page size:
60
select
 162 items in 3 pages
 )
*/
