/*In the key bindings menu, change the "osu! standard mode" left and right click from "z" and "x" to "a" and "s".

Use z, x, c, v, and Space keys to play.
*/

Pause Off
#IfWinActive osu!
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


/*
If a key is released, make it pressable by resetting the press value to 0,
if all 5 keys are released, release the keys ingame
*/

; Button 5 released.
Space Up::
press5 = 0
if(press1 == 0 && press2 == 0 && press3 == 0 && press4 == 0 && press5 == 0){
	SendInput {a Up}
	SendInput {s Up}
}

; Button 4 released.
v Up::
press4 = 0
if(press1 == 0 && press2 == 0 && press3 == 0 && press4 == 0 && press5 == 0){
	SendInput {a Up}
	SendInput {s Up}
}

; Button 3 released.
c Up::
press3 = 0
if(press1 == 0 && press2 == 0 && press3 == 0 && press4 == 0 && press5 == 0){
	SendInput {a Up}
	SendInput {s Up}
}
return

; Button 2 released
x Up::
press2 = 0
if(press1 == 0 && press2 == 0 && press3 == 0 && press4 == 0 && press5 == 0){
	SendInput {a Up}
	SendInput {s Up}
}
return

; Button 1 released
z Up::
press1 = 0
if(press1 == 0 && press2 == 0 && press3 == 0 && press4 == 0 && press5 == 0){
	SendInput {a Up}
	SendInput {s Up}
}
return

/*
If a key is pressed, check if it wasn't already pressed and if not swap the pressed key ingame,
this way pressing any of the 5 keys guarantees that a keypress is generated.
*/

; Called whenever a key should be pressed ingame.
click()
{
	global lastKey
	if(lastKey == 1){
		SendInput {s Down}
		SendInput {a Up}
		lastKey = 2
	}
	else {
		SendInput {a Down}
		SendInput {s Up}
		lastKey = 1
	}
}

/*
If one of the 5 keys is pressed, check if it was already pressed and if not, press a key ingame.
*/


Space::
if (press5 != 1)	;
{
	press5 = 1
	click()
}
return

v::
if (press4 != 1)	;
{
	press4 = 1
	click()
}
return

c::
if (press3 != 1)
{
	press3 = 1
	click()
}
return

x::
if (press2 != 1)
{
	press2 = 1
	click()
}
return

z::
if (press1 != 1)
{
	press1 = 1
	click()
}
return