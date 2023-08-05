;   turn an external 10key pad into a macropad
;
#SingleInstance Force
#Requires Autohotkey v2.0
;   press and release the calculator key, then 0 or 1 or 2
Launch_App2::
{
;
InstallKeybdHook ; important don't forget
;   ih := InputHook([Options, EndKeys, MatchList]) ; object named ih but can be anything
ih := InputHook("L1") ; length one character only
ih.Start() ; need these 3 in this order
ih.Wait() ; need these 3 in this order
ih.Stop() ; need these 3 in this order
;   done when one key is pressed
;
str := ih.Input ; set variable str to the value of the key you pressed
switch
{
    case InStr(str, "0"): MsgBox "0",,"T2"
    case InStr(str, "1"): MsgBox "1",,"T2"
    case InStr(str, "2"): MsgBox "2",,"T2"
}
}
Esc::ExitApp   
/*
This code will turn an external wireless 10key pad into a macro keyboard.
You'll want one that has a key you don't use often, so look for a picture
of a calculator, volume control or other non-standard key.

I used this keypad from Amazon: https://www.amazon.com/Wireless-RaceGT-Ultra-Silent-Rechargeable-Notebook/dp/B09ZJWKBVW

To see what key you need to use for the trigger:

When you plug it in and it is working, run any ahk script that doesn't end.
Right click on the ahk icon in the system tray and click open
Click on View > Keyhistory and script info
Press keys on the keypad while pressing F5 on the keyboard to see which buttons
are mapped to what

This code is for pressing the calculator button then the next button.

To press two keys at the same time the code is easier:

Launch_App2 & 0::
{
    msgbox "0",,"T2"
}
/*
