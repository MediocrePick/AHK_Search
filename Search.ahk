#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Keyboard rebind
+CapsLock::CapsLock
CapsLock::BackSpace

; Select previous word
!Space::
Send ^+{Left}
return

; Open Chrome and search
!s::
clipboard := ""
Send ^c
ClipWait, 1
Run, chrome.exe
WinWaitActive, New Tab - Google Chrome, , 5
Send ^v
Send {Enter}
return
