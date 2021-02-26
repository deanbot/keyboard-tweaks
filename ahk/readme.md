## Purpose

Provide a suite of keyboard tweaks via a single configurable AHK entrypoint.

## Modules

* __AltGr__ - sybmols layer
* __Extend__ - navigation/editing layer
* __Hotstring__ - automatic text replacement
* __Keymap__ - mappings for Colemak mod dh (ANSI)
* __Shortcut__ - application launchers and other keyboard shortcuts

## Get Started

1. Clone or download this repo
2. Download and install [AutoHotkey](https://www.autohotkey.com/)
3. Copy or rename `user-template.ini` as `user.ini` and fill in placeholder information. Path is used for shortcuts. Email is used for hotstrings.
4. Copy or rename `Hotstring\hotstring_user-template.ahk` as `Hotstring\hotstring_user.ahk` and follow instructions in file.
5. Copy or rename `Shortcut\shortcut_user-template.ahk` as `Shortcut\shortcut_user.ahk` and customize as needed with shortcuts.
6. Adjust configuration in `main.ahk` for desired mappings and Extend/AltGr modifiers.

## Credits

Project structure, mappings, and extend/AltGr layers draw heavily from [stevep99/keyboard-tweaks](https://github.com/stevep99/keyboard-tweaks).
