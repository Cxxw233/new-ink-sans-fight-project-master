tl1++
if (tl1 == 60 || tl1 == 180)
{
    c = instance_create_depth(400, 310, 0,butaqua4_2)
    c.image_angle = -90
    c.direction = 180
    c.speed = 1.3333
    c = instance_create_depth(400, 340, 0,butaqua4_2)
    c.image_angle = -90
    c.direction = 180
    c.speed = 1.3333
    c = instance_create_depth(400, 370, 0,butaqua4_2)
    c.image_angle = -150
    c.direction = 180
    c.speed = 1.3333
}
if (tl1 == 120 || tl1 == 240)
{
    c = instance_create_depth(400, 310, 0,butaqua4_2)
    c.image_angle = 90
    c.direction = 180
    c.speed = 1.3333
    c = instance_create_depth(400, 280, 0,butaqua4_2)
    c.image_angle = 90
    c.direction = 180
    c.speed = 1.3333
    c = instance_create_depth(400, 250, 0,butaqua4_2)
    c.image_angle = 150
    c.direction = 180
    c.speed = 1.3333
}
if (tl1 >= 270 && (tl1 % 20) == 0 && tl1 <= 390)
{
    repeat (3)
    {
        c = instance_create_depth((320 + irandom_range(-75, 75)), 230, 0,butaqua4_2)
        c.image_angle = -90
        c.gravity = 0.1
        c.vspeed = -2
    }
}
if (tl1 >= 450 && (tl1 % 10) == 0 && tl1 < 750 && instance_exists(battle_soul))
{
    cd = irandom(359)
    c = instance_create_depth((320 + lengthdir_x(100, cd)), (310 + lengthdir_y(100, cd)), 0,butaqua4_2)
    c.image_angle = point_direction(c.x, c.y, battle_soul.x, battle_soul.y)
    c.direction = (point_direction(c.x, c.y, battle_soul.x, battle_soul.y) + 180)
    c.gravity_direction = (180 + c.direction)
    c.gravity = 0.1
    c.speed = 2
}
if (tl1 == 840)
{
    butaqua4_1.c = 1
}
if (tl1 == 840)
{
    butaqua4_3.c = 1
}
if (tl1 == 870)
{
	battle_soul_red.sprite_index=spr_battle_soul_red
	battle_board.color_frame=c_white
	instance_destroy(battleaqua_4_2)
    Battle_EndTurn()
}
