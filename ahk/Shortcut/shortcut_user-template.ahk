#NoEnv
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SendMode Input

; INSTRUCTIONS: Apply user customizations here (see shortcut_base.ahk for examples)

; ###### Activators #######
; F1-F3
F1::
  WinActivate, ahk_exe Teams.exe
  return

F2::
  WinActivate, ahk_exe Outlook.exe
  return

F3::
  WinActivate, ahk_exe Slack.exe
  return

; ###### App Launchers #######

; outlook
^!o::
  run Outlook
  return

; my favorite site
^!f::
  run microsoft-edge:https://site.fav
  return
