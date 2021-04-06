;------------------------------
;   This script assumes that
;  CAPSLOCK is changed to F24
;   by registry registration
;------------------------------

;Reverse Mouse Wheel
WheelUp::WheelDown
WheelDown::WheelUp

;CapsLock to nothing
*f24::Return

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
	Tab::CapsLock
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
	=::F12
#If
