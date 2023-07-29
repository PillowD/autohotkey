;   inputhook working code
;
SetTitleMatchMode 2
#SingleInstance Force
#Requires Autohotkey v2.0

^y:: ; ctrl y to start capturing keystrokes
{
InstallKeybdHook ; important don't forget
;   ih := InputHook([Options, EndKeys, MatchList]) ; object named ih but can be anything
ih := InputHook(,"{ENTER}") ; pass to it that enter means stop recording
ih.Start() ; need these 3 in this order
ih.Wait() ; need these 3 in this order
ih.Stop() ; need these 3 in this order
A_Clipboard := ih.Input ; copy what you typed to the clipboard
}
Esc::ExitApp
