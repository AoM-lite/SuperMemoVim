; #If WinActive("ahk_group " . Vim.GroupName) and (Vim.State.StrIsInCurrentVimMode("Vim_")) and (not Vim.State.g)
; g::Vim.State.SetMode("", 1)

#If WinActive("ahk_group " . Vim.GroupName) and (Vim.State.StrIsInCurrentVimMode("Vim_"))
; 1 character
h::Vim.Move.Repeat("h")
j::Vim.Move.Repeat("j")
k::Vim.Move.Repeat("k")
l::Vim.Move.Repeat("l")

; Home/End
0::Vim.Move.Move("0")
$::Vim.Move.Move("$")
^::Vim.Move.Move("^")

; Words
w::Vim.Move.Repeat("w")
b::Vim.Move.Repeat("b")

; Page Up/Down
; G
; +g::Vim.Move.Move("+g")
; gg
; #If WinActive("ahk_group " . Vim.GroupName) and (Vim.State.StrIsInCurrentVimMode( "Vim_")) and (Vim.State.g)
; g::Vim.Move.Move("g")
; }}} Move
