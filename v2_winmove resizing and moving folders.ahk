;	v2_winmove resizing and moving folders 
#Requires AutoHotkey v2.0
#SingleInstance Force
;  you can either create these folders or pick 4 others and change the names in the script
;  don't forget your name is probably not front
run "C:\Users\front\Desktop\Mr Brady"
winwaitactive "Mr Brady"
sleep 2000 ;
WinMove(300,300,600,700,"Mr Brady")
sleep 2000 ;

run "C:\Users\front\Desktop\Mrs Brady"
winwaitactive "Mrs Brady"
sleep 2000 ;
WinMove(400,400,500,600,"Mrs Brady")
sleep 2000 ;

run "C:\Users\front\Desktop\Greg"
winwaitactive "Greg"
sleep 2000 ;
WinMove(500,500,400,500,"Greg")
sleep 2000 ;


run "C:\Users\front\Desktop\Marsha"
winwaitactive "Marsha"
sleep 2000 ;
WinMove(600,600,300,400,"Marsha")
sleep 2000
winclose "Marsha"
sleep 500
winclose "Greg"
sleep 500
winclose "Mrs Brady"
sleep 500
winclose "Mr Brady"

Esc::ExitApp
ExitApp
/*
The Sleep 2000s are un-necessary, they just slow down the
script to make trouble shooting easier

This is on on a single 1920 x 1080 monitor.  If you have a multi
monitor desktop, you can temporarily set the desktop to 
'duplicate' to simulate having 1 monitor

WinMove [X, Y, Width, Height, WinTitle, WinText, ExcludeTitle, ExcludeText](IN PIXELS)

If either is omitted, the size in that dimension will not be changed. Otherwise, specify the new width and height of the window (IN PIXELS).

Sleep The amount of time to pause (in milliseconds) 1000ms = 1s.
*/
