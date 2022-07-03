tl1++
if (tl1 == 45)
{
    instance_create_depth(320, 200, 0,butred4_1)
    instance_create_depth(320, 385, 0,butred4_3)
    instance_create_depth(0, 0, 0,butred4_4)
}
if ((tl1 % 100) == 0 && tl1 < 885)
{
    dir = random(360)
    repeat (20)
    {
        mk = instance_create_depth(100, 100, 0,butred4_2)
        mk.direction = dir
        mk.speed = 2
        dir += 18
    }
    dir = random(360)
    repeat (20)
    {
        mk = instance_create_depth(540, 100, 0,butred4_2)
        mk.direction = dir
        mk.speed = 2
        dir += 18
    }
}
if ((tl1 % 20) == 0 && tl1 < 885)
{
    dir = (tl1 * 2)
    repeat (4)
    {
        mk = instance_create_depth(100, 300, 0,butred4_2)
        mk.direction = dir
        mk.speed = 2
        dir += 90
    }
    dir = ((-tl1) * 2)
    repeat (4)
    {
        mk = instance_create_depth(540, 300, 0,butred4_2)
        mk.direction = dir
        mk.speed = 2
        dir += 90
    }
}
if (tl1 > 885)
{
    with (butred4_1)
        de = 1
    with (butred4_2)
        de = 1
    with (butred4_3)
        de = 1
}
if (tl1 == 895)
{
	battle_board.color_frame=c_white
    Battle_EndTurn()
}

