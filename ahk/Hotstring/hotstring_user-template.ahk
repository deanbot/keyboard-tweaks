#NoEnv
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SendMode Input

; Instructions: replace ab with your initials

; ###### Hotstrings #######
; key + space/tab/enter

; personal email
::ab@::
  Send %Personal%
return

; work email
::abw@::
  Send %Work%
return
