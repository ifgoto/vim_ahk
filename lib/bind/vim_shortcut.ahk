; Launch Settings
#If
^!+v::
  Vim.Setting.ShowGui()
Return

; Check Mode
#If Vim.IsVimGroup()
^!+c::
  Vim.State.CheckMode(4, Vim.State.Mode)
Return

; Suspend/restart
#If
;^!+s::
;just swap with the ctrl+x |cut
^x::
  Vim.State.ToggleEnabled()
Return

#If

; Check Mode
#If Vim.State.IsCurrentVimMode("Insert")
^h::
  SendInput, {BackSpace 1}
Return
#If