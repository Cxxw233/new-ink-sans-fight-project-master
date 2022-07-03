a++
if instance_exists(battle_soul)
{
    if (mode == 0)
    {
        if (a < 50)
            image_alpha += 0.02
        if ((a % 32) == 0 && a > 50)
        {
            GMU_Anim_New(id, "x", 4, 11, x, (battle_soul.x - x), 15)
            GMU_Anim_New(id, "y", 4, 11, y, (battle_soul.y - y), 15)
            var rad = random_range(0, 360)
            but = instance_create_depth((battle_soul.x + lengthdir_x(800, rad)), (battle_soul.y + lengthdir_y(800, rad)), 0,butorangee8)
            but.image_xscale = 2
            but.image_yscale = 2
            but.image_alpha = 1
            but.mode = 1
            but.image_index = 1
            but.image_angle = (point_direction((battle_soul.x + lengthdir_x(800, rad)), (battle_soul.y + lengthdir_y(800, rad)), battle_soul.x, battle_soul.y) - 90)
            but.xx = battle_soul.x
            but.yy = battle_soul.y
            but.direction = point_direction((battle_soul.x + lengthdir_x(800, rad)), (battle_soul.y + lengthdir_y(800, rad)), battle_soul.x, battle_soul.y)
            but.speed = 8
        }
    }
}
if (mode == 1)
{
    if (abs((x - xx)) < 10 && abs((y - yy)) < 10)
    {
        instance_destroy()
        but = instance_create_depth(x, y, 0,butorangee8)
        but.mode = 2
        but.image_alpha = 1
        but.image_index = 2
        but.image_xscale = 2
        but.image_yscale = 2
        var dirr = random_range(0, 360)
        repeat (10)
        {
            but = instance_create_depth(x, y, 0,butorangee8)
            but.direction = dirr
            but.speed = 1
            but.mode = 3
            but.image_angle = (dirr - 90)
            but.image_index = 1
            but.image_alpha = 1
            dirr += 36
        }
    }
}
if (mode == 2)
{
    image_alpha -= 0.02
    if (a == 50)
        instance_destroy()
}
if (mode == 3)
    speed += 0.15
if ((x >= 635 || x <= 5 || y >= 475 || y <= 5) && mode == 3)
{
    instance_destroy()
    but = instance_create_depth(x, y, 0,butorangee8)
    but.mode = 2
    but.image_alpha = 1
    but.image_index = 2
    but.image_xscale = 1
    but.image_yscale = 1
}
