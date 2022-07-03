time += 1
if (time == 23)
{
    gravity_direction += 180
    if (gravity_direction >= 360)
        gravity_direction -= 360
    speed = 0
    gravity = 0
    alarm[0] = 40
}
if (speed != 0)
{
    var ins = instance_create_depth(x, y, depth, obj_phase1_final_pen_fake)
    ins.image_blend = image_blend
}

 