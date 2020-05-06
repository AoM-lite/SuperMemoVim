; Focus on Learn Button
#If WinActive("ahk_group " . Vim.GroupName)
Tab::
WinActivate ahk_class TElWind
WinWaitActive ahk_class TElWind
ControlFocus, TBitBtn3
return


; Back to Normal Mode after extracting
#If WinActive("ahk_group " . Vim.GroupName) and (Vim.State.StrIsInCurrentVimMode("Visual"))
!x::
Sleep, 30
Vim.State.SetMode("Vim_Normal", 0, 0, 0)
Send, !{x}
Return

; Back to Normal Mode after clozing
#If WinActive("ahk_group " . Vim.GroupName) and (Vim.State.StrIsInCurrentVimMode("Visual"))
!z::
Sleep, 30
Vim.State.SetMode("Vim_Normal", 0, 0, 0)
Send, !{z}
Return

; Remove previous word
#If WinActive("ahk_group " . Vim.GroupName) and (Vim.State.StrIsInCurrentVimMode("Insert"))
^w::
WinWaitActive ahk_class TElWind
Send, ^{BS}
Return


; This is a non-standard Vim binding
; for deleting the next word while in Insert Mode
#If WinActive("ahk_group " . Vim.GroupName) and (Vim.State.StrIsInCurrentVimMode("Insert"))
^e::
WinWaitActive ahk_class TElWind
Send, ^{Del}
return

#If WinActive("ahk_group " . Vim.GroupName) and (Vim.State.Mode == "Vim_Normal")
^e::
return


; Go to previous visited item
#If WinActive("ahk_group " . Vim.GroupName) and (Vim.State.Mode == "Vim_Normal")
!h::
Send, !{Left}
return

; Go to next visited item
#If WinActive("ahk_group " . Vim.GroupName) and (Vim.State.Mode == "Vim_Normal")
!l::
Send, !{Right}
return


; `asdfg` mapped for grading

If WinActive("ahk_group " . Vim.GroupName) and (Vim.State.Mode == "Vim_Normal")
a::
    Send, {1}
    Sleep, 50
    Send, {Space}
return



If WinActive("ahk_group " . Vim.GroupName) and (Vim.State.Mode == "Vim_Normal")
s::
    Send, {2}
    Sleep, 50
    Send, {Space}
return

If WinActive("ahk_group " . Vim.GroupName) and (Vim.State.Mode == "Vim_Normal")
d::
    Send, {3}
    Sleep, 50
    Send, {Space}
return

If WinActive("ahk_group " . Vim.GroupName) and (Vim.State.Mode == "Vim_Normal")
f::
    Send, {4}
    Sleep, 50
    Send, {Space}
return

If WinActive("ahk_group " . Vim.GroupName) and (Vim.State.Mode == "Vim_Normal")
g::
    Send, {5}
    Sleep, 50
    Send, {Space}
return



If WinActive("ahk_group " . Vim.GroupName) and (Vim.State.Mode == "Vim_Normal")
+j::
Send, {Down}{Down}{Down}{Down}{Down}
Sleep, 50
return


If WinActive("ahk_group " . Vim.GroupName) and (Vim.State.Mode == "Vim_Normal")
+k::
Send, {Up}{Up}{Up}{Up}{Up}
Sleep, 50
return