^+!?:: ; Ctrl + Shift + Alt + ?
{
    ; Get the active window's title
    WinGetTitle, Title, A

    ; For VSCode
    IfInString, Title, Visual Studio Code
    {
        ; Hold down Shift and Alt
        Send, {Shift down}{Alt down}{r}
        
        Sleep, 100

        Send, R

        ; Release Shift and Alt
        Send, {Shift up}{Alt up}

        return
    }

    ; For visual studio 
    IfInstring, Title, Visual Studio
    {
        sleep, 100
        ; send Shift alt r 
        Send, +!r
        return
    }

    ; Get the active window's class name
    WinGetClass, ClassName, A

    ; Check if the window class name matches IntelliJ IDEA's class
    If (ClassName = "SunAwtFrame") ; Common class name for IntelliJ IDEA
    {
        ; Perform actions specific to IntelliJ IDEA
        Send, !{F1}
        Sleep, 100
        Send, 8
    }
}
return
