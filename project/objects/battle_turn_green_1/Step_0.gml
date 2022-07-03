tl1 += 1
if ((tl1 % 40) == 0 && tl1 <= 160)
{
    repeat (3)
    {
        c = instance_create_depth(450, (310 + (irandom_range(-2, 2) * 25)), 0,butgreen4_1)
        c.image_angle = 180
        c.speed = 4.5
        c.direction = 0
        c.gravity = 0.2
        c.gravity_direction = 180
    }
}
if (tl1 > 160 && (tl1 % 40) == 0 && tl1 <= 360)
{
    repeat (3)
    {
        c = instance_create_depth(190, (310 + irandom_range(-69, 69)), 0,butgreen4_1)
        c.image_angle = 0
        c.speed = 4.5
        c.direction = 180
        c.gravity = 0.2
        c.gravity_direction = 0
    }
}
if (tl1 > 360 && (tl1 % 10) == 0 && tl1 <= 825)
{
    ag = irandom(359)
    c = instance_create_depth((320 + lengthdir_x(130, ag)), (310 + lengthdir_y(130, ag)), 0,butgreen4_1)
    c.image_angle = (ag + 180)
    c.speed = 4.5
    c.direction = ag
    c.gravity = 0.2
    c.gravity_direction = (ag + 180)
}
if (tl1 == 870)
    butgreen4_2.c = 1
if (tl1 == 900)
{
battle_board.color_frame=c_white
Battle_EndTurn()
}
if battle_soul.x<225
battle_soul.x=226
if battle_soul.y<245
battle_soul.y=246
if battle_soul.x>385
battle_soul.x=384
if battle_soul.y>375
battle_soul.y=374
