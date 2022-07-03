time += 1
if speeed=0
   speed=10
if speeed=1
   speed=5
if (time == 23)
{
if (image_blend == c_aqua)
{
   instance_create_depth(x, y, depth, obj_phase2_2_aqua)
}
if (image_blend == c_orange)
{
   instance_create_depth(x, y, depth, obj_phase2_2_orange)
}
    gravity_direction += 180
    if (gravity_direction >= 360)
        gravity_direction -= 360
		speed=0
    speeed = choose(0,1)
    gravity = 0
    alarm[0] = 20
}
if (speed != 0)
{
    var ins = instance_create_depth(x, y, depth, obj_phase1_final_pen_fake)
    ins.image_blend = image_blend
}
if time%50=0
{
	if (image_blend == c_aqua)
{
   instance_create_depth(x, y, depth, obj_phase2_2_aqua)
}
if (image_blend == c_orange)
{
   instance_create_depth(x, y, depth, obj_phase2_2_orange)
}
}
 if x < 0
 x=640
 if x > 640
 x=0
