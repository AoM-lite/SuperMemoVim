﻿#If WinActive("ahk_group " . Vim.GroupName) and (Vim.State.Mode == "Vim_Normal")
; Undo/Redo
u::Send,^z
^r::Send,^y

; #If WinActive("ahk_group " . Vim.GroupName) and (Vim.State.Mode == "Vim_Normal")
; Space::Send, {Right}
