;   a notification function demonstrating variables as comments
;   you can use listvars or listlines to look at your code
;   I found the formatting easier to do in excel so I'm including
;   the xlsx file names v2_notify.xlsx.  Copy your code in the 
;   then paste the cleaned up comments near the end of your script
#Requires AutoHotkey v2.0
#SingleInstance force
#WinActivateForce
KeyHistory 500
Quotenumber := 12345
;---------------------------place in sript where you want the notification
MyNotificationFunc(QuoteNumber, "2000", "155", "985", "0") ; 10000 milliseconds = 10 seconds, position bottom right corner (x-axis 1550 y-axis 985) on 1920×1080 display resolution; use timer
SetTimer EndMyNotif, -1000 ; Reset notification timer to 1s after code in auto-execute section has finished running
;---------------------------
; Below code can be placed anywhere in your script
;------------------------------------------------------------------------------
MyNotificationFunc(mytext, myduration, xAxis, yAxis, timer) {       ; search for `ToolTipFunc` for alternative
Global MyNotification := Gui("+AlwaysOnTop -Caption +ToolWindow")   ; +ToolWindow avoids a taskbar button and an Alt-Tab menu item.
MyNotification.BackColor := "EEEEEE"                ; White background, can be any RGB color (it will be made transparent below)
MyNotification.SetFont("s18 w1000", "Arial")         ; font size 9, bold
MyNotification.AddText("cBlack w230 Left", mytext)  ; black text
MyNotification.Show("x1650 y985 NoActivate")        ; NoActivate avoids deactivating the currently active window
WinMove xAxis, yAxis,,, MyNotification
If timer = 1
    SetTimer EndMyNotif, myduration * -1
If timer = 0 {
    Sleep myduration
    EndMyNotif
    }
}

EndMyNotif() {
MyNotification.Destroy
}
/* Start variables as comments section*/
` & 4:: ;  hotkey is the tic mark left of the number 1 and 4 at the same time.
{
    listvars ; shows variables
}
` & 5:: ;  hotkey is the tic mark left of the number 1 and 5 at the same time.
{
    listlines ; shows recently executed lines
}
zz001	:=	"	  a notification function demonstrating variables as comments	"
zz002	:=	"	  you can use listvars or listlines to look at your code	"
zz003	:=	"	  I found the formatting easier to do in excel so I'm including	"
zz004	:=	"	  the xlsx file names v2_notify.xlsx.  Copy your code in the	"
zz005	:=	"	  then paste the cleaned up comments near the end of your script	"
zz006	:=	"	#Requires AutoHotkey v2.0	"
zz007	:=	"	#SingleInstance force	"
zz008	:=	"	#WinActivateForce	"
zz009	:=	"	KeyHistory 500	"
zz010	:=	"	Quotenumber := 12345	"
zz011	:=	"	---------------------------place in sript where you want the notification	"
zz012	:=	"	MyNotificationFunc(QuoteNumber, 2000, 155, 985, 0) 10000 milliseconds = 10 seconds, position bottom right corner (x-axis 1550 y-axis 985) on 1920×1080 display resolution use timer	"
zz013	:=	"	SetTimer EndMyNotif, -1000 Reset notification timer to 1s after code in auto-execute section has finished running	"
zz014	:=	"	---------------------------	"
zz015	:=	"	Below code can be placed anywhere in your script	"
zz016	:=	"	------------------------------------------------------------------------------	"
zz017	:=	"	MyNotificationFunc(mytext, myduration, xAxis, yAxis, timer) {       search for ToolTipFunc for alternative	"
zz018	:=	"	Global MyNotification := Gui(+AlwaysOnTop -Caption +ToolWindow)   +ToolWindow avoids a taskbar button and an Alt-Tab menu item.	"
zz019	:=	"	MyNotification.BackColor := EEEEEE                 White background, can be any RGB color (it will be made transparent below)	"
zz020	:=	"	MyNotification.SetFont(s18 w1000, Arial)         font size 9, bold	"
zz021	:=	"	MyNotification.AddText(cBlack w230 Left, mytext)   black text	"
zz022	:=	"	MyNotification.Show(x1650 y985 NoActivate)         NoActivate avoids deactivating the currently active window	"
zz023	:=	"	WinMove xAxis, yAxis,,, MyNotification	"
zz024	:=	"	If timer = 1	"
zz025	:=	"	    SetTimer EndMyNotif, myduration * -1	"
zz026	:=	"	If timer = 0 {	"
zz027	:=	"	    Sleep myduration	"
zz028	:=	"	    EndMyNotif	"
zz029	:=	"	    }	"
zz030	:=	"	}	"
zz031	:=	"		"
zz032	:=	"	EndMyNotif() {	"
zz033	:=	"	MyNotification.Destroy	"
zz034	:=	"	}	"
zz035	:=	"	/* Start variables as comments section*/	"
zz036	:=	"	& 4::  hotkey is the tic mark left of the number 1 and 4 at the same time.	"
zz037	:=	"	{	"
zz038	:=	"	    Listvars shows only the global variables	"
zz039	:=	"	}	"
zz040	:=	"	& 5::  hotkey is the tic mark left of the number 1 and 5 at the same time.	"
zz041	:=	"	{	"
zz042	:=	"	    listlines shows recently executed lines	"
zz043	:=	"		"
zz044	:=	"	Esc::ExitApp	"

Esc::ExitApp

/*
//traytip in ps format
Add-Type -AssemblyName System.Windows.Forms

$balloonTip = New-Object System.Windows.Forms.NotifyIcon

# Set notification properties
$balloonTip.BalloonTipText = "Multiline`nText"
$balloonTip.BalloonTipTitle = "My Title"
$balloonTip.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon((Get-Process -Id $pid).Path)  # Assuming you want icon based on process
$balloonTip.Visible = $true

# Show the notification
$balloonTip.ShowBalloonTip(5000)  # Optional: Duration in milliseconds (default 500)

# Hide the notification after some time (optional)
Start-Sleep -Seconds 10  # Adjust time as needed
$balloonTip.Dispose()

*/