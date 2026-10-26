#Requires AutoHotkey v2.0

; ============================================================
; Remap Copilot key → Right Ctrl
; ============================================================
; Intercept the exact combo the Copilot key sends (Left Win + Left Shift + F23)
*<+<#F23::{
    ; Instantly release Win and Shift so they don't mess up your shortcuts,
    ; then hold Right Ctrl
    Send("{Blind}{LShift up}{LWin up}{RCtrl down}")
}
; When you release the Copilot key...
*<+<#F23 up::{
    ; Release Right Ctrl
    Send("{Blind}{RCtrl up}")
}

; ============================================================
; Line navigation — Alt + Arrow keys
; ============================================================
; Move to the beginning of the line with Altgr + Left Arrow
^!Left::Send("{Home}")
; Move to the end of the line with Altgr + Right Arrow
^!Right::Send("{End}")
; Select to the beginning of the line with Shift + Altgr + Left Arrow
+^!Left::Send("+{Home}")
; Select to the end of the line with Shift + Altgr + Right Arrow
+^!Right::Send("+{End}")

; Delete the whole line backwards with Altgr + Backspace
^!Backspace::{
    Send("+{Home}")
    Sleep(20)
    Send("{Backspace}")
}

; Delete the whole line forwards with Altgr + Delete
^!Delete::{
    KeyWait("Delete")
    KeyWait("LAlt")
    Send("+{End}{Delete}")
}

