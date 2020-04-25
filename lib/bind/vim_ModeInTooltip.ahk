#If WinActive("ahk_group " . Vim.GroupName)

Tab::
If (Vim.State.Mode == "Vim_Normal")
{
    ToolTip, N, A_CaretX + 45, A_CaretY + 30
    SetTimer, RemoveToolTip, -600
    return
}
else if (Vim.State.Mode == "Insert")
{
    ToolTip, I, A_CaretX + 45, A_CaretY + 30
    SetTimer, RemoveToolTip, -600
    return
}
else if (Vim.State.Mode == "Vim_VisualChar" or Vim.State.Mode == "Vim_VisualLineFirst")
{
    ToolTip, V, A_CaretX + 45, A_CaretY + 30
    SetTimer, RemoveToolTip, -600
    return
}

RemoveToolTip:
ToolTip
return