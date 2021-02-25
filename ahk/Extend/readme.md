## Purpose

Provide navigation (arrow keys, home, end) and light manipulation (backspace, delete) around the home row when extend key is held.

Goals:
- allow cursor navigation without leaving home row
- allow ctrl and shift to be used for navigating, selecting, and copy/paste

Plan:
- Choose modifier: leftalt or capslock
- sh and ctrl accessible from left hand
- all other keys accessible from right hand

## In Progress

Current:
- Using [TouchCursor] with space as modifier.

Problem:
- Would rather not overload space
- Cannot map any keys to shift or ctrl
- Cannot map to left alt as extend modifier
- Can map caps lock as extend modifier but it's awkward to reach ctrl or shift

Solution:
- implement via AHK using [stevep99's reference](https://github.com/stevep99/keyboard-tweaks/tree/master/ExtendLayer)
