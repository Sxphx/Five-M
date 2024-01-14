#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

f5::
    WinActivate, ahk_class grcWindow

    loop,
    {

        ImageSearch, x, y, 0, 0, 1920, 1080, pic/A.png
        if ErrorLevel = 0
        {
            SendInput, A
            Random, SleepTime, 1001, 1201 
            Sleep, %SleepTime%
        }

        ImageSearch, x, y, 0, 0, 1920, 1080, pic/W.png
        if ErrorLevel = 0
        {
            SendInput, W
            Random, SleepTime, 1001, 1201 
            Sleep, %SleepTime%
        }

        ImageSearch, x, y, 0, 0, 1920, 1080, pic/R.png
        if ErrorLevel = 0
        {
            SendInput, R
            Random, SleepTime, 1001, 1201 
            Sleep, %SleepTime%
        }

        ImageSearch, x, y, 0, 0, 1920, 1080, pic/D.png
        if ErrorLevel = 0
        {
            SendInput, D
            Random, SleepTime, 1001, 1201 
            Sleep, %SleepTime%
        }

        ImageSearch, x, y, 0, 0, 1920, 1080, pic/G.png
        if ErrorLevel = 0
        {
            SendInput, G
            Random, SleepTime, 1001, 1201 
            Sleep, %SleepTime%
        }

        ImageSearch, x, y, 0, 0, 1920, 1080, pic/S.png
        if ErrorLevel = 0
        {
            SendInput, S
            Random, SleepTime, 1001, 1201 
            Sleep, %SleepTime%
        }

        ImageSearch, x, y, 0, 0, 1920, 1080, pic/L.png
        if ErrorLevel = 0
        {
            SendInput, L
            Random, SleepTime, 1001, 1201 
            Sleep, %SleepTime%
        }
    }
return

Esc::
ExitApp
return
