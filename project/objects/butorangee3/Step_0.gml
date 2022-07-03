
a++
if (mode == 0)
{
    if (a < 11)
        drawr++
    if (a == 22)
    {
        instance_create_depth(x, y, 0, butorangee9)
        drawr = 0
    }
    if (a == 24)
    {
        instance_destroy()
        var dirr = 0
        repeat (9)
        {
            but = instance_create_depth(x, y, 0,butorangee3)
            but.direction = dirr
            but.mode = 1
            but.speed = 1
            dirr += 40
        }
    }
}
if (mode == 1)
{
    if (a < 8)
        drawr++
    speed += 0.25
}
if (mode == 2)
{
    if (a < 11)
    {
        image_alpha += 0.1
        drawr = 16
    }
    if (a == 11)
    {
        c = instance_create_depth(x, y, 0,gb1_2)
        instance_create_depth(0, 0, 0,gb1_3)
		c.sprite_index = bssp25
        c.image_blend = c_white
        c.image_angle = (dir + 90)
        c.image_yscale = 100
        c.image_xscale = 2
        alarm[0] = 10
        alarm[1] = 30
    }
}
if (mode == 3)
{
    if (a < 11)
    {
        image_alpha += 0.1
        drawr = 32
    }
    if (a == 11)
    {
        c = instance_create_depth(x, y, 0,gb1_2)
        instance_create_depth(0, 0, 0,gb1_3)
		c.sprite_index = bssp25
        c.image_blend = c_white
        c.image_angle = (dir + 90)
        c.image_yscale = 100
        c.image_xscale = 3
        var yy = 0
        repeat (40)
        {
            but = instance_create_depth(x, (y + yy), 0,butorangee3)
            but.direction = random_range(0, 360)
            but.mode = 4
            but.speed = random_range(0, 1)
            yy += 20
        }
        alarm[0] = 10
        alarm[1] = 30
    }
}
if (mode == 4)
{
    speed += 0.05
    drawr = 10
}
if (mode == 5)
{
    if (a < 101)
    {
        image_alpha += 0.01
        drawr = ((a / 101) * 16)
    }
    if (a == 101)
    {
        c = instance_create_depth((x + 2), y, 0,gb1_2)
        instance_create_depth(0, 0, 0,gb1_3)
		c.sprite_index = bssp25
        c.image_blend = c_white
        c.image_angle = ((90 + dir) - 180)
        c.image_yscale = 100
        c.image_xscale = 2
        c.depth = (depth - 1)
        GMU_Anim_New(c, "image_xscale", 1, 11, 2, 7.6, 60)
        GMU_Anim_New(id, "drawr", 1, 11, drawr, (0 - drawr), 60)
        alarm[0] = 220
        alarm[1] = 240
    }
}
if (mode == 6)
{
    sprite_index = battleextraaqua_6
    image_speed = 0
    image_xscale = 0.15
    image_yscale = 0.15
    if (place_meeting(x, y, battle_board) && bounce != 0)
    {
        bounce--
        move_bounce_solid(0)
        direction += random_range(15, -15)
    }
}
