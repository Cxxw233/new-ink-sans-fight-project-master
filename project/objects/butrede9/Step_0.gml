a++
if (image_xscale != 1.5 && (b == 0 || b == 3))
{
    image_xscale += 0.05
    image_yscale += 0.05
}
if (image_xscale != 2 && b == 6)
{
    image_xscale += 0.05
    image_yscale += 0.05
}
if (a == 50 && b == 0)
{
    var ll = random_range(0, 360)
    c = instance_create_depth(x, y, 0,butrede9)
    c.b = 1
    c.dir = ll
    GMU_Anim_New(c, "x", 1, 12, 322, lengthdir_x(60, c.dir), 30)
    GMU_Anim_New(c, "y", 1, 12, 310, lengthdir_y(60, c.dir), 30)
    c = instance_create_depth(x, y, 0,butrede9)
    c.b = 1
    c.dir = (ll + 180)
    GMU_Anim_New(c, "x", 1, 12, 322, lengthdir_x(60, c.dir), 30)
    GMU_Anim_New(c, "y", 1, 12, 310, lengthdir_y(60, c.dir), 30)
}
if (b == 1 && a > 30)
{
    dir += 2
    x = (322 + lengthdir_x(60, dir))
    y = (310 + lengthdir_y(60, dir))
}
if (a == 80 && b == 0)
{
    ll = random_range(0, 360)
    c = instance_create_depth(x, y, 0,butrede9)
    c.b = 2
    c.dir = ll
    GMU_Anim_New(c, "x", 1, 12, 322, lengthdir_x(35, c.dir), 30)
    GMU_Anim_New(c, "y", 1, 12, 310, lengthdir_y(35, c.dir), 30)
    c = instance_create_depth(x, y, 0,butrede9)
    c.b = 2
    c.dir = (ll + 180)
    GMU_Anim_New(c, "x", 1, 12, 322, lengthdir_x(35, c.dir), 30)
    GMU_Anim_New(c, "y", 1, 12, 310, lengthdir_y(35, c.dir), 30)
}
if (b == 2 && a > 30)
{
    dir -= 4
    x = (322 + lengthdir_x(35, dir))
    y = (310 + lengthdir_y(35, dir))
}
if (b == 3 && a == 50 && instance_exists(battle_soul))
{
    direction = point_direction(x, y, battle_soul.x, battle_soul.y)
    speed = 12
    xx = battle_soul.x
    yy = battle_soul.y
}
if (b == 3 && a > 50)
{
    d = instance_create_depth(x, y, 0,butrede9)
    d.b = 4
}
if (b == 3 && a > 50 && e == 1)
{
    if (abs((x - xx)) < 15 && abs((y - yy)) < 15)
    {
        e = 0
        alarm[1] = 10
    }
}

 
