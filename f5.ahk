#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
CoordMode, Pixel
f5::

    Loop,
    {
        ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, pic/A.png
        if ErrorLevel = 0
        {
            SendInput, A
            Sleep, 500
        }

        ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, pic/D.png
        if ErrorLevel = 0
        {
            SendInput, D
            Sleep, 500

        }

        ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, pic/G.png
        if ErrorLevel = 0
        {
            SendInput, G
            Sleep, 500

        }

        ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, pic/L.png
        if ErrorLevel = 0
        {
            SendInput, L
            Sleep, 500

        }

        ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, pic/R.png
        if ErrorLevel = 0
        {
            SendInput, R
            Sleep, 500

        }

        ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, pic/S.png
        if ErrorLevel = 0
        {
            SendInput, S
            Sleep, 500

        }

        ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, pic/W.png
        if ErrorLevel = 0
        {
            SendInput, W
            Sleep, 500
        }
    }
Return
Esc::
ExitApp
return
