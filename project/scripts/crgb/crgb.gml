/// @arg x
/// @arg y
/// @arg xto
/// @arg yto
/// @arg tuse
/// @arg spr
/// @arg lzrspr1
/// @arg lzrspr2
/// @arg alarm
/// @arg xscale
/// @arg lzrsca
/// @arg tlong
/// @arg tlong2
/// @arg anto
/// @arg angle
/// @arg obj
function crgb(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11, argument12, argument13, argument14, argument15) {
	c=instance_create_depth(argument0,argument1,DEPTH_BATTLE.BOARD,argument15)
	c.xto=argument2
	c.yto=argument3
	c.tuse=argument4
	c.sprite_index=argument5
	c.spr=argument6
	c.spr2=argument7
	c.alarm[0]=argument8
	c.image_xscale=argument9
	c.xsca=argument10
	c.tlong=argument12
	c.tlong2=argument12
	c.anto=argument13
	c.image_angle=argument14
	return c;//This for instance: xxx = crgb(...);


}
