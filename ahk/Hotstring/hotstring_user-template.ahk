#NoEnv
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SendMode Input

; Instructions: replace ab with your initials

; ###### Hotstrings #######
; key + space/tab/enter

; personal email
::ab@::
  IniRead, Personal, user.ini, Email, Personal
  SendInput %Personal%
return

; work email
::abw@::
  IniRead, Work, user.ini, Email, Work
  SendInput %Work%
return
