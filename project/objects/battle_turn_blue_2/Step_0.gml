tl1++
if (tl1 == 30)
{
    for (iii = 0; iii < 24; iii++)
        fb[iii] = instance_create_depth((320 + lengthdir_x(100, (iii * 15))), (310 + lengthdir_y(100, (iii * 15))), 0,butblue4_1)
    instance_create_depth(320, 310, 0,butblue4_3)
}
if (tl1 >= 90 && (tl1 % 10) == 0 && tl1 < 309)//375
{
    do
    {
        mt = 0
        sx[((tl1 - 90) / 10)] = irandom(23)
        if (fb[sx[((tl1 - 90) / 10)]].g == 0 && (lx == -233 || (abs((sx[((tl1 - 90) / 10)] - lx)) > 3 && abs((sx[((tl1 - 90) / 10)] - lx)) < 33)))
        {
            fb[sx[((tl1 - 90) / 10)]].g = 1
            mt = 1
        }
    }until (mt == 1);
    fb[sx[((tl1 - 90) / 10)]].image_index = 6
    lx = sx[((tl1 - 90) / 10)]
}
if (tl1 >= 405 && (tl1 % 10) == 0 && tl1 < 675)
{
    f1 = fb[sx[((tl1 - 405) / 15)]]
    f2 = fb[sx[(((tl1 - 405) / 15) + 1)]]
    fo = instance_create_depth(f1.x, f1.y, 0,butblue4_2)
    fo.image_angle = point_direction(f1.x, f1.y, f2.x, f2.y)
    //f1.image_angle = point_direction(f1.x, f1.y, f2.x, f2.y)
    fo.image_xscale = (point_distance(f1.x, f1.y, f2.x, f2.y)/24)
    //f1.c = 1
    instance_create_depth(0, 0, 0,gb1_3)
}
if (tl1 == 465 && instance_exists(battle_soul))
{
    with (butblue4_1)
        image_angle = point_direction(x, y, battle_soul.x, battle_soul.y)
}
if (tl1 == 470)
{
    with (butblue4_1)
    {
        fo = instance_create_depth(x, y, 0,butblue4_2)
        fo.image_angle = image_angle
        fo.image_xscale = 40
        c = 1
    }
    instance_create_depth(0, 0, 0,gb1_3)
}
if (tl1 == 490)
{
    with (butblue4_3)
        instance_destroy()
		battle_board.color_frame=c_white
        Battle_EndTurn()
}
