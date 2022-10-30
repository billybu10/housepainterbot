#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
^#Z::
axis:=1
Loop{
    Random, keey, 1, 2
    If (axis = 1)
        If (keey = 1)
            Send, {Down}
        If (keey = 2)
            Send, {Up}
        axis = 2
    
    If (axis = 2)
        If (keey = 1)
            Send, {Left}
        If (keey = 2)
            Send, {Right}
        axis = 1
    
    KeyIsDown := GetKeyState("Pause" , P)
    If (KeyIsDown = 1)
        Return
    
    ;part responsible for new level is under this line
    ;PixelGetColor, color, Xgreybutton1, Ygreybutton1
    ;If (color  = value)
    ;    Click, Xgreenbutton1 Ygreenbutton1
    ;PixelGetColor, color, Xgreybutton2, Ygreybutton2
    ;If (color  = value)
    ;    Click, Xgreenbutton2 Ygreenbutton2
}
Return