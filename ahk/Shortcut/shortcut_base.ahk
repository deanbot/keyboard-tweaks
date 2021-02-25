#NoEnv
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SendMode Input

; ###### Windows #######

; Open home folder
#Home::
  Run explorer.exe ;{%userprofile%}
  return

; Empty trash
; Win+Del
#Del::FileRecycleEmpty ; win + delI think that this is pretty bad and it didn't work there

; ###### App Launchers #######
; ctrl+alt+[key]

; editor (VS Code)
^!e::
  IniRead, Home, user.ini, Path, Home
  run % Home . "\AppData\Local\Programs\Microsoft VS Code\Code.exe"
  return

; outlook
^!o::
  run Outlook
  return

; teams
^!t::
  IniRead, Home, user.ini, Path, Home
  run %Home%\AppData\Local\Microsoft\Teams\Update.exe --processStart "Teams.exe"
  return

; notes (Onenote)
^!n::
  run onenote-cmd`:
  return

; browser (Edge)
^!b::
  run microsoft-edge`:
  return

; teamviewer
^!v::
  run "C:\Program Files (x86)\TeamViewer\TeamViewer.exe"
  return

; slack
^!s::
  IniRead, Home, user.ini, Path, Home
  run % Home . "\AppData\Local\slack\slack.exe"
  return

; gmail
^!m::
  run microsoft-edge:https://mail.google.com/mail/u/0/#inbox
  return

; apple music
^!i::
  run iTunes
  return

; plex
^!p::
  run "C:\Program Files\Plex\Plex\Plex.exe"
  return

; bitwarden
^!l::
  run "C:\Program Files\Bitwarden\Bitwarden.exe"
  return

; ###### cut/paste plain text #######
; ctrl + win + v
; ctrl + win + x/c

^#v::                            ; Text–only paste from ClipBoard
   Clip0 = %ClipBoardAll%
   ClipBoard = %ClipBoard%       ; Convert to text
   Send ^v                       ; For best compatibility: SendPlay
   Sleep 50                      ; Don't change clipboard while it is pasted! (Sleep > 0)
   ClipBoard = %Clip0%           ; Restore original ClipBoard
   VarSetCapacity(Clip0, 0)      ; Free memory
Return

^#x::
^#c::                            ; Text-only cut/copy to ClipBoard
   Clip0 = %ClipBoardAll%
   ClipBoard =
   StringRight x,A_ThisHotKey,1  ; C or X
   Send ^%x%                     ; For best compatibility: SendPlay
   ClipWait 2                    ; Wait for text, up to 2s
   If ErrorLevel
      ClipBoard = %Clip0%        ; Restore original ClipBoard
   Else
      ClipBoard = %ClipBoard%    ; Convert to text
   VarSetCapacity(Clip0, 0)      ; Free memory
Return

; ###### google search #######
; Win+G = google search
; Win+Ctrl+G = google image search

#g::    ; <-- Google Web Search Using Highlighted Text (Win+G)
   Search := 1
   Gosub Google
return

^#g::    ; <-- Google Image Search Using Highlighted Text (Win+Ctrl+G)
   Search := 2
   Gosub Google
return

Google:
   Save_Clipboard := ClipboardAll
   Clipboard := ""
   Send ^c
   ClipWait, .5
   if !ErrorLevel
      Query := Clipboard
   else
      InputBox, Query, Google Search, , , 200, 100, , , , , %Query%
   Query := UriEncode(Trim(Query))
   if (Search = 1)
      Address := "http://www.google.com/search?hl=en&q=" Query ; Web Search
   else if (Search = 2)
      Address := "http://www.google.com/search?site=imghp&tbm=isch&q=" Query ; Image Search
   else
      Address := "http://www.google.com/maps/search/" Query ; Map Search
      Run, microsoft-edge:%Address%  ; Change this if require different browser search
   Clipboard := Save_Clipboard
   Save_Clipboard := ""
return

UriEncode(Uri)
{
   VarSetCapacity(Var, StrPut(Uri, "UTF-8"), 0)
   StrPut(Uri, &Var, "UTF-8")
   f := A_FormatInteger
   Res := ""
   SetFormat, IntegerFast, H
   While Code := NumGet(Var, A_Index - 1, "UChar")
      If (Code >= 0x30 && Code <= 0x39 ; 0-9
         || Code >= 0x41 && Code <= 0x5A ; A-Z
         || Code >= 0x61 && Code <= 0x7A) ; a-z
         Res .= Chr(Code)
      Else
         Res .= "%" . SubStr(Code + 0x100, -1)
   SetFormat, IntegerFast, %f%
   Return, Res
}
return

; ###### Hotstrings #######
; key + space/tab/enter

::ipsum...::
(
  Turnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.
)
