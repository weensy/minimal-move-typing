;----------------------------------------------
;           This script assumes that
;            CAPSLOCK && SCROLLLOCK
; are replaced each other through the registry.
;-----------------------------------------------

;Reverse Mouse Wheel
WheelUp::WheelDown
WheelDown::WheelUp

;CapsLock operate with 英数 key
;(It only works on Japanese)
ScrollLock::sc03A

;CapsLock combinations
#If GetKeyState("ScrollLock","P")
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
	sc029::Esc ;半角/全角 key
	Tab::CapsLock
	Enter::PrintScreen
	CapsLock::ScrollLock
	sc03A::ScrollLock
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
	=::F12
#If
