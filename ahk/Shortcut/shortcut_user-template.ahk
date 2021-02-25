#NoEnv
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SendMode Input

; INSTRUCTIONS: Apply user customizations here (see shortcut_base.ahk for examples)

; ###### App Launchers #######

; my favorite site
^!f::
  run microsoft-edge:https://site.fav
  return
