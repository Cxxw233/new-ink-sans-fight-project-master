var STATE = Battle_GetState()
var MENU = Battle_GetMenu()
if (STATE == (3 << 0) || STATE == (2 << 0) || (STATE == (0 << 0) && MENU != (2 << 0) && MENU != (3 << 0) && MENU != (4 << 0)))
	draw_self()
event_inherited();

