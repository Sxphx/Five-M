#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

Gui, StatusBox: New
Gui, StatusBox: +AlwaysOnTop
Gui, StatusBox: +LastFound
Gui, StatusBox: Color, White
Gui, StatusBox: Add, Text, vStatusText, Status Message Here
Gui, StatusBox: Show, w216 h68, Stam Status
UpdateStatus("f5 to start")

f5::
    UpdateStatus("started")

    loop,
    {
        UpdateStatus("Wait")

        ImageSearch, x, y, 0, 0, 1920, 1080, pic/A.png
        if ErrorLevel = 0
        {
            SendInput, A
            UpdateStatus("A")
            Random, SleepTime, 1001, 1201 
            Sleep, %SleepTime%
        }

        ImageSearch, x, y, 0, 0, 1920, 1080, pic/W.png
        if ErrorLevel = 0
        {
            SendInput, W
            UpdateStatus("W")
            Random, SleepTime, 1001, 1201 
            Sleep, %SleepTime%
        }

        ImageSearch, x, y, 0, 0, 1920, 1080, pic/R.png
        if ErrorLevel = 0
        {
            SendInput, R
            UpdateStatus("R")
            Random, SleepTime, 1001, 1201 
            Sleep, %SleepTime%
        }

        ImageSearch, x, y, 0, 0, 1920, 1080, pic/D.png
        if ErrorLevel = 0
        {
            SendInput, D
            UpdateStatus("D")
            Random, SleepTime, 1001, 1201 
            Sleep, %SleepTime%
        }

        ImageSearch, x, y, 0, 0, 1920, 1080, pic/G.png
        if ErrorLevel = 0
        {
            SendInput, G
            UpdateStatus("G")
            Random, SleepTime, 1001, 1201 
            Sleep, %SleepTime%
        }

        ImageSearch, x, y, 0, 0, 1920, 1080, pic/S.png
        if ErrorLevel = 0
        {
            SendInput, S
            UpdateStatus("S")
            Random, SleepTime, 1001, 1201 
            Sleep, %SleepTime%
        }

        ImageSearch, x, y, 0, 0, 1920, 1080, pic/L.png
        if ErrorLevel = 0
        {
            SendInput, L
            UpdateStatus("L")
            Random, SleepTime, 1001, 1201 
            Sleep, %SleepTime%
        }
    }
return

UpdateStatus(NewStatus){
    GuiControl, StatusBox: Text, StatusText, %NewStatus%
    Gui, StatusBox: Show
return
}

Esc::
ExitApp
return
