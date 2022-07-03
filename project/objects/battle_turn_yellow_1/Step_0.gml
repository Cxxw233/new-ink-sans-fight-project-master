tl1++
if (tl1 == 1)
{
    instance_create_depth(0, 0, 0,butyellow2_1)
    instance_create_depth(0, 0, 0,butyellow2_3)
}
if ((tl1 % 5) == 0)
{
    switch irandom(3)
    {
        case 0:
            mk = instance_create_depth((247 + random(155)), 232, 0,butyellow2_2)
            mk.vspeed = 1
            break
        case 1:
            mk = instance_create_depth((247 + random(155)), 392, 0,butyellow2_2)
            mk.vspeed = -1
            break
        case 2:
            mk = instance_create_depth(242, (237 + random(155)), 0,butyellow2_2)
            mk.hspeed = 1
            break
        case 3:
            mk = instance_create_depth(397, (237 + random(155)), 0,butyellow2_2)
            mk.hspeed = -1
            break
    }

}
if (tl1 == 550)
{
	battle_board.color_frame=c_white
    Battle_EndTurn()
    with (butyellow2_1)
        instance_destroy()
    with (butyellow2_2)
        instance_destroy()
    with (butyellow2_3)
        instance_destroy()
}
