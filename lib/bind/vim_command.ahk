#If WinActive("ahk_group " . Vim.GroupName) and (Vim.State.Mode == "Vim_Normal")
:::Vim.State.SetMode("Command") ;(:)
`;::Vim.State.SetMode("Command") ;(;)
#If WinActive("ahk_group " . Vim.GroupName) and (Vim.State.Mode == "Command")
w::Vim.State.SetMode("Command_w")
q::Vim.State.SetMode("Command_q")


#If WinActive("ahk_group " . Vim.GroupName) and (Vim.State.Mode == "Command_w")
Return::
  Send, ^s
  Vim.State.SetMode("Vim_Normal")
Return