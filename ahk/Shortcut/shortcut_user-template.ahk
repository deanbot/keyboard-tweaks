#NoEnv
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SendMode Input

; ###### Hotstrings #######
; key + space/tab/enter

; REPLACE ab with your initials

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
