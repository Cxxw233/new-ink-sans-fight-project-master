a += 1
if (type == 1)
{
    if (a < 20)
    {
        image_alpha += 0.05
        if instance_exists(battle_soul)
            image_angle = ((a * 18) + point_direction(x, y, battle_soul.x, battle_soul.y))
    }
    if (a == 20)
        image_alpha = 1
    if (a >= 20 && a <= 40)
    {
        if instance_exists(battle_soul)
            image_angle = point_direction(x, y, battle_soul.x, battle_soul.y)
    }
    if (a == 60)
    {
        direction = image_angle
        speed = 10
        friction = 0.02
    }
}
if (type == 2)
{
    if (a == 3)
    {
        with (instance_create_depth(x, y, 0,butgreene4))
        {
            type = 3
            image_angle = 45
        }
        with (instance_create_depth(x, y, 0,butgreene4))
        {
            type = 3
            image_angle = 90
        }
        with (instance_create_depth(x, y, 0,butgreene4))
        {
            type = 3
            image_angle = 135
        }
        with (instance_create_depth(x, y, 0,butgreene4))
        {
            type = 3
            image_angle = 180
        }
        with (instance_create_depth(x, y, 0,butgreene4))
        {
            type = 3
            image_angle = 225
        }
        with (instance_create_depth(x, y, 0,butgreene4))
        {
            type = 3
            image_angle = 270
        }
        with (instance_create_depth(x, y, 0,butgreene4))
        {
            type = 3
            image_angle = 315
        }
        with (instance_create_depth(x, y, 0,butgreene4))
        {
            type = 3
            image_angle = 360
        }
    }
}
if (type == 3)
{
    image_alpha += 0.02
    if (a == 50)
    {
        direction = image_angle
        speed = 0.1
        friction = -0.1
    }
    if (a >= 65)
    {
        direction = image_angle
        image_angle += 1.5
    }
}
if (type == 4)
{
    image_alpha += 0.25
    image_angle = 90
    speed = 1
    if ((a % 8) == 0)
        direction = image_angle
    if ((a % 16) == 0)
        direction = (-image_angle)
}
if (type == 5)
{
    if (a == 3)
    {
        var angl = random_range(0, 360)
        with (instance_create_depth((x + lengthdir_x(20, (60 + angl))), (y + lengthdir_y(20, (60 + angl))), 0,butgreene4))
        {
            type = 6
            image_angle = (60 + angl)
        }
        with (instance_create_depth((x + lengthdir_x(20, (105 + angl))), (y + lengthdir_y(20, (105 + angl))), 0,butgreene4))
        {
            type = 6
            image_angle = (105 + angl)
        }
        with (instance_create_depth((x + lengthdir_x(20, (150 + angl))), (y + lengthdir_y(20, (150 + angl))), 0,butgreene4))
        {
            type = 6
            image_angle = (150 + angl)
        }
        with (instance_create_depth((x + lengthdir_x(20, (195 + angl))), (y + lengthdir_y(20, (195 + angl))), 0,butgreene4))
        {
            type = 6
            image_angle = (195 + angl)
        }
        with (instance_create_depth((x + lengthdir_x(20, (240 + angl))), (y + lengthdir_y(20, (240 + angl))), 0,butgreene4))
        {
            type = 6
            image_angle = (240 + angl)
        }
        with (instance_create_depth((x + lengthdir_x(20, (285 + angl))), (y + lengthdir_y(20, (285 + angl))), 0,butgreene4))
        {
            type = 6
            image_angle = (285 + angl)
        }
        with (instance_create_depth((x + lengthdir_x(20, (330 + angl))), (y + lengthdir_y(20, (330 + angl))), 0,butgreene4))
        {
            type = 6
            image_angle = (330 + angl)
        }
        with (instance_create_depth((x + lengthdir_x(20, (375 + angl))), (y + lengthdir_y(20, (375 + angl))), 0,butgreene4))
        {
            type = 6
            image_angle = (375 + angl)
        }
    }
}
if (type == 6)
{
    image_alpha += 0.2
    if (a == 35)
    {
        direction = image_angle
        GMU_Anim_New(id, "speed", 0, 11, -2.3, 12.3, 90)
    }
}
if (type == 7)
{
    image_alpha += 0.2
    image_xscale = 1.2
    image_yscale = 1.2
    direction = image_angle
    if (a < 20)
    {
        if instance_exists(battle_soul)
            image_angle = point_direction(x, y, battle_soul.x, (battle_soul.y - 3))
    }
    if (a == 30)
        speed = 4.2
}

 
