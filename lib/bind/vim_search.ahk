#If Vim.IsVimGroup() and (Vim.State.IsCurrentVimMode("Vim_Normal"))
/::
  Send, ^f
  Vim.State.SetMode("Insert")
Return

*::
  bak := ClipboardAll
  Clipboard=
  Send, ^{Left}+^{Right}^c
  ClipWait, 1
  Send, ^f
  ;;for the confliction with ctrl+v to paste, switch to q
  ;Send, ^v!f
  Send, ^q!f
  clipboard := bak
  Vim.State.SetMode("Insert")
Return

n::Send, {F3}
+n::Send, +{F3}

#If
