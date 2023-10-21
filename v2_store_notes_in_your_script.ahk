;   store notes in your script you can look at while it is running
;    tic and g activates this one.
#Requires AutoHotkey v2.0
#SingleInstance Force
;   
a1 := "-------Only this much visible in listvars window----------|"
a2 := "                                                          |"
a3 := "                                                          |"
a4 := "        Hello                                             |"
a5 := "        There,                                            |"
a6 := "        General                                           |"
a7 := "        Grievous.                                         |"
a8 := "                                                          |"
a9 := "                                                          |"
Esc::ExitApp
;
;/*  uncomment this line to disable hotkey and listvars
;
` & g::  ; hotkey is the tic mark left of the number 1 and g at the same time.
{
    Listvars
}
/*
You can skip the hotkey and listvars if you instead right click
on the Hotkey icon in the system tray, Open, and Ctrl V to
show variables.
*/
