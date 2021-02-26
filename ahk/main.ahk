#SingleInstance force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#MaxHotkeysPerInterval 1000

; global suspend/resume hotkeys

F9::Suspend , On
F10::Suspend , Off

; main key mapping

#Include .\Keymap\colemak_dh_ansi.ahk

#InputLevel 1
F8::F19         ; define keymap susp toggle on f8
#InputLevel 0

; Extend layer

#Include .\Extend\extend.ahk

#InputLevel 1
; sc038::F22     ; define Extend on left-alt
; sc03a::F22     ; define Extend on CapsLock
#InputLevel 0

; AltGr layer

#Include .\AltGr\altgr.ahk

#InputLevel 1
; RAlt::F20         ; define right-alt as altgr

; BackSpace::F20    ; define right-alt on backspace (for Ergo Pro)
; RAlt::RShift      ; define shift on right-alt
#InputLevel 0

; User Config

;sc03a::lalt    ; define left-alt on capslock
; sc15B::lalt    ; define left-alt on leftwin
; sc03a::lwin    ; define left-win on capslock

; Shortcuts

#Include .\Shortcut\shortcut_base.ahk
#Include .\Shortcut\shortcut_user.ahk

; Hotstrings

#Include .\Hotstring\hotstring_base.ahk
#Include .\Hotstring\hotstring_user.ahk
