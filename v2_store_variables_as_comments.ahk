;  This script is to store info you can see with listvars
SetTitleMatchMode 2
#SingleInstance Force
#Requires Autohotkey v2.0
zza := "|-                                                      --|"
zzb := "A_Scriptname= " A_Scriptname
zzc := "-------Only this much visible in listvars window----------|"
zzd := "Ctrl+R Reload Script "
zze := "Ctrl+L List Lines Most recently executed"
zzf := "Pause/Unpause keyboard pause key"
zzg := "Ctrl+H Hotkeys and their methods"
zzh := "|-                                                      --|"
zzi := "-------------------------------------------------------Only this much visible in lines most recently executed window----------|"
zzj:= "
(
    multiline variables
    still appear as 1 single
    line in listvars (Ctrl+V)
)"

` & 4:: ;  hotkey is the tic mark left of the number 1 and 4 at the same time.
{
    Listvars ; shows only the global variables
}
` & 5:: ;  hotkey is the tic mark left of the number 1 and 5 at the same time.
{
    mytic5function()
    {
        ; this function does nothig
    }
    ;  list vars will show these variables after the hotkey ` & 5
    local zzm := "Hello there "
    static zzn := "General Grievous."
    listvars
}
Pause
Esc::ExitApp
ExitApp