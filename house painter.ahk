#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
^#Z::
os:=1
Loop{
    Random, kye, 1, 2
    If (os = 1)
        If (kye = 1)
            Send, {Down}
        If (kye = 2)
            Send, {Up}
        os = 2
    
    If (os = 2)
        If (kye = 1)
            Send, {Left}
        If (kye = 2)
            Send, {Right}
        os = 1
    
    KeyIsDown := GetKeyState("Pause" , P)
    If (KeyIsDown = 1)
        Return
    
    ;PixelGetColor, color, Xszary1, Yszary1
    ;If (color  = value)
    ;    Click, Xzielony1 Yzielony1
    ;PixelGetColor, color, Xszary2, Yszary2
    ;If (color  = value)
    ;    Click, Xzielony2 Yzielony2
}
Return