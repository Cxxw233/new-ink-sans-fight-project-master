tl1++
if ((tl1 % 10) == 0 && tl1 < 540)
{
    c = instance_create_depth(160, 100, 0,butgreen5_1)
    c.direction = (-90 + (sin(((tl1 / 5) / 3)) * 45))
    c.image_angle = (c.direction + choose(0, 180))
    c.speed = 1.5
    c.friction = -0.02
    c = instance_create_depth(480, 100, 0,butgreen5_1)
    c.direction = (-90 - (sin(((tl1 / 5) / 3)) * 45))
    c.image_angle = (c.direction + choose(0, 180))
    c.speed = 1.5
    c.friction = -0.02
}
if ((tl1 % 20) == 0 && tl1 < 540)
{
    c = instance_create_depth(choose(0, 640), (330 + irandom_range(-60, 60)), 0,butgreen5_1)
    c.direction = (sign(c.x) * 180)
    c.speed = 1.5
    c.friction = -0.02
}
if (tl1 == 600)
    butgreen5_2.c = 1
if (tl1 == 680)
{
	battle_board.color_frame=c_white
    Battle_EndTurn()
}
