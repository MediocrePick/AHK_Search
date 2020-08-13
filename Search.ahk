#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

+CapsLock::CapsLock

CapsLock::BackSpace

!Space::
Send ^+{Left}
return

!s::
clipboard := ""
Send ^c
ClipWait
Send +#1
WinWaitActive, New Tab - Google Chrome
Send ^v
Send {Enter}
return