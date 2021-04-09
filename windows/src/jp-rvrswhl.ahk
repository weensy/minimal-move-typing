;------------------------------
;   This script assumes that
;  CAPSLOCK is changed to F24
;   by registry registration
;------------------------------

;Reverse Mouse Wheel
WheelUp::WheelDown
WheelDown::WheelUp

;CapsLock works as 英数 key in Japanese
comb = False
*f24::
comb := False
Return
*f24 up::
if !comb
	Send, {sc03A}
Return

;CapsLock combinations
#If GetKeyState("f24","P")
    ;Arrow keys for left hand
	w::Up
	a::Left
	s::Down
	d::Right

	;Arrow keys for right hand
	i::Up
	j::Left
	k::Down
	l::Right

	;Special keys
	`::Esc
	sc029::Esc
	Tab::
	if GetKeyState("CapsLock","T")
	SetCapsLockState, Off
	else
	SetCapsLockState, On
	return
	Enter::PrintScreen
	Backspace::Delete 
	h::Home
	n::End
	p::PgUp
	`;::PgDn
	
	;Function keys
	1::F1
	2::F2
	3::F3
	4::F4
	5::F5
	6::F6
	7::F7
	8::F8
	9::F9
	0::F10
	-::F11
	;=::F12
	^::F12

	;In combination, CapsLock does not work as 英数
	w up::
	comb := True
	Send, {Up up}
	Return
	a up::
	comb := True
	Send, {Left up}
	Return
	s up::
	comb := True
	Send, {Down up}
	Return
	d up::
	comb := True
	Send, {Right up}
	Return

	i up::
	comb := True
	Send, {Up up}
	Return
	j up::
	comb := True
	Send, {Left up}
	Return
	k up::
	comb := True
	Send, {Down up}
	Return
	l up::
	comb := True
	Send, {Right up}
	Return

	` up::
	comb := True
	Send, {Esc up}
	Return
	sc029 up::
	comb := True
	Send, {Esc up}
	Return
	Tab up::
	comb := True
	Return
	Enter up::
	comb := True
	Send, {PrintScreen up}
	Return
	Backspace up::
	comb := True
	Send, {Delete up}
	Return
	h up::
	comb := True
	Send, {Home up}
	Return
	n up::
	comb := True
	Send, {End up}
	Return
	p up::
	comb := True
	Send, {PgUp up}
	Return
	`; up::
	comb := True
	Send, {PgDn up}
	Return
	
	1 up::
	comb := True
	Send, {F1 up}
	Return
	2 up::
	comb := True
	Send, {F2 up}
	Return
	3 up::
	comb := True
	Send, {F3 up}
	Return
	4 up::
	comb := True
	Send, {F4 up}
	Return
	5 up::
	comb := True
	Send, {F5 up}
	Return
	6 up::
	comb := True
	Send, {F6 up}
	Return
	7 up::
	comb := True
	Send, {F7 up}
	Return
	8 up::
	comb := True
	Send, {F8 up}
	Return
	9 up::
	comb := True
	Send, {F9 up}
	Return
	0 up::
	comb := True
	Send, {F10 up}
	Return
	- up::
	comb := True
	Send, {F11 up}
	Return
	= up::
	comb := True
	Send, {F12 up}
	Return
#If
