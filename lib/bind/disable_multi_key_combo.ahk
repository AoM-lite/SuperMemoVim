#If WinActive("ahk_group " . Vim.GroupName)

;;;;;;; Below are all multi-key combo
; All Three-key combo
; All Ctrl+Shift+Key combo

; Delete Current Element
Shift & V::
GetKeyState, state, Ctrl
if state = D
{
return
} else {
Send, +V
return
}

; Delete the currently displayed element 
Shift & Del::
GetKeyState, state, Ctrl
if state = D
{
return
} else {
return
}

; Impose template 
Shift & F2::
GetKeyState, state, Ctrl
if state = D
{
return
} else {
return
}

; Save as default
Shift & F5::
GetKeyState, state, Ctrl
if state = D
{
return
} else {
return
}

; Process picture
Shift & F8::
GetKeyState, state, Ctrl
if state = D
{
return
} else {
return
}

; Randomize (outstanding) repetitions 
Shift & F11::
GetKeyState, state, Ctrl
if state = D
{
return
} else {
return
}

; Convert formatted text to plain text 
Shift & F12::
GetKeyState, state, Ctrl
if state = D
{
return
} else {
return
}

; Text : deHTML-ize 
Shift & F1::
GetKeyState, state, Ctrl
if state = D
{
return
} else {
return
}

; Import web pages or pictures
Shift & A::
GetKeyState, state, Ctrl
if state = D
{
return
} else {
Send, +A
return
}

; in the registry window: Generate registry subset
Shift & B::
GetKeyState, state, Ctrl
if state = D
{
return
} else {
Send, +B
return
}


; Add to final drill 
Shift & D::
GetKeyState, state, Ctrl
if state = D
{
return
} else {
Send, +D
return
}

; Send element, files, or extract via e-mail 
Shift & E::
GetKeyState, state, Ctrl
if state = D
{
return
} else {
Send, +E
return
}

; Link registry font (in text components) 
Shift & F::
GetKeyState, state, Ctrl
if state = D
{
return
} else {
Send, +F
return
}


; Hide SuperMemo 
Shift & G::
GetKeyState, state, Ctrl
if state = D
{
return
} else {
Send, +G
return
}


; Reading : Ignore (on the component menu) 
Shift & I::
GetKeyState, state, Ctrl
if state = D
{
return
} else {
Send, +I
return
}


; Link registry member 
Shift & K::
GetKeyState, state, Ctrl
if state = D
{
return
} else {
Send, +K
return
}


; when editing HTML: Add a bullet to the text 
Shift & L::
GetKeyState, state, Ctrl
if state = D
{
return
} else {
Send, +L
return
}
; Edit component order 
Shift & O::
GetKeyState, state, Ctrl
if state = D
{
return
} else {
Send, +O
return
}

; Force repetition
Shift & R::
GetKeyState, state, Ctrl
if state = D
{
return
} else {
Send, +R
return
}

; Transfer the current element to another collection 
Shift & T::
GetKeyState, state, Ctrl
if state = D
{
return
} else {
Send, +T
return
}


; Import from Wikipedia 
Shift & W::
GetKeyState, state, Ctrl
if state = D
{
return
} else {
Send, +W
return
}


; Display the ancestors window
Shift & X::
GetKeyState, state, Ctrl
if state = D
{
return
} else {
Send, +X
return
}


; Import from YouTube
Shift & Y::
GetKeyState, state, Ctrl
if state = D
{
return
} else {
Send, +Y
return
}


; All Shift+Alt+Key combo

; Tools : Statistics : Analysis
Alt & A::
GetKeyState, state, Shift
if state = D
{
return
} else {
return
}


; Reading : Insert : Insert splitline
Alt & H::
GetKeyState, state, Shift
if state = D
{
return
} else {
return
}


Alt & L::
GetKeyState, state, Shift
if state = D
{
return
} else {
return
}


; Mercy
Alt & M::
GetKeyState, state, Shift
if state = D
{
return
} else {
return
}

; Components : Tile components (on the element menu) 
Alt & T::
GetKeyState, state, Shift
if state = D
{
return
} else {
return
}

; Schedule extract and define its priority
; Clash with existing shortcut keys
; Alt & X::
GetKeyState, state, Shift
if state = D
{
return
} else {
Send, !X
return
}