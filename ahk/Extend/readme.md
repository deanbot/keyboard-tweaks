## Purpose

Provide navigation (arrow keys, home, end) and light manipulation (backspace, delete) around the home row when extend key is held.

Goals:
- Allow cursor navigation without leaving home row
- Allow Ctrl and Shift to be used for navigating, selecting, and copy/paste

Plan:
- Choose modifier: leftalt or capslock
- Shift and Ctrl accessible from left hand
- All other keys accessible from right hand

## In Progress

Current:
- Using [TouchCursor] with space as modifier.

Problem:
- Would rather not overload space
- Cannot map any keys to Shift or Ctrl
- Cannot map to left alt as extend modifier
- Can map caps lock as extend modifier but it's awkward to reach Ctrl or Shift

Solution:
- Implement via AHK using [stevep99's reference](https://github.com/stevep99/keyboard-tweaks/tree/master/ExtendLayer)

Questions:
- Should mouse movement/scroll go here or in AltGr?
