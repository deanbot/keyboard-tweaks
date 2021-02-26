SendMode Input

; Colemak Mod-DH mapping for ANSI boards
;;;PPPP
; suspend keymap toggle
susp := 0
F19::susp := !susp

SC012::Send, % (!susp) ? "f" : "{SC012}"
SC013::Send, % (!susp) ? "p" : "{SC013}"
SC014::Send, % (!susp) ? "b" : "{SC014}"
SC015::Send, % (!susp) ? "j" : "{SC015}"
SC016::Send, % (!susp) ? "l" : "{SC016}"
SC017::Send, % (!susp) ? "u" : "{SC017}"
SC018::Send, % (!susp) ? "y" : "{SC018}"
SC019::SendInput, % (!susp) ? ";" : "{SC019}"
+SC019::Send, % (!susp) ? ":" : "{SC019}"

SC01F::Send, % (!susp) ? "r" : "{SC01F}"
SC020::Send, % (!susp) ? "s" : "{SC020}"
SC021::Send, % (!susp) ? "t" : "{SC021}"
SC023::Send, % (!susp) ? "m" : "{SC023}"
SC024::Send, % (!susp) ? "n" : "{SC024}"
SC025::Send, % (!susp) ? "e" : "{SC025}"
SC026::Send, % (!susp) ? "i" : "{SC026}"
SC027::Send, % (!susp) ? "o" : "{SC027}"

SC02c::Send, % (!susp) ? "x" : "{SC02c}"
SC02d::Send, % (!susp) ? "c" : "{SC02d}"
SC02e::Send, % (!susp) ? "d" : "{SC02e}"
SC030::Send, % (!susp) ? "z" : "{SC030}"
SC031::Send, % (!susp) ? "k" : "{SC031}"
SC032::Send, % (!susp) ? "h" : "{SC032}"

; set Backspace to CapsLock key
; :sc03a::Send, % (!susp) ? "{backspace}" : "{capslock}"
