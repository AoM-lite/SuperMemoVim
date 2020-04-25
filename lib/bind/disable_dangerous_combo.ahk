#If WinActive("ahk_group " . Vim.GroupName)

; Two-key combo

+F12:: ; Quick backup
^Delete:: ; in the element window, delete the current component
^F12:: ; Repair collection
!Backspace:: ; Undo text editing (same as Ctrl+Z)
!F4:: ; Close the program
MsgBox It does not work because it is disabled by supermemovim.
return


; Ctrl Shift Enter: Remove all elements!!!
Ctrl & Enter::
GetKeyState, state, Shift
if state = D
{
MsgBox You are forbidden to delete all elements.
Send, {Esc}
return
} else {
Send, ^{Enter}
return
}