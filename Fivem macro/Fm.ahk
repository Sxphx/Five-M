#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

Gui, StatusBox: New
Gui, StatusBox: +AlwaysOnTop
Gui, StatusBox: +LastFound
Gui, StatusBox: Color, White
Gui, StatusBox: Add, Text, vStatusText, Status Message Here
Gui, StatusBox: Show, w216 h68, Stam Status
UpdateStatus("a to start")

a::
    loop,
    {
        ImageSearch, x, y, 0, 0, 1920, 1080, pic/A.png
        if ErrorLevel = 0
        {
            MouseMove, %x%, %y%
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
