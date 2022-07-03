if keyboard_check_pressed(vk_up)
    ud = -1
if keyboard_check_pressed(vk_down)
    ud = 1
if keyboard_check_pressed(vk_left)
    lr = -1
if keyboard_check_pressed(vk_right)
    lr = 1
tl1++
if ((tl1 % 10) == 0)
{
    mk = instance_create_depth((320 - (lr * 80)), (310 + random_range(-80, 80)), 0,butorange5_1)
    mk.hspeed = (lr * 1)
    mk = instance_create_depth((320 + random_range(-80, 80)), (310 - (ud * 80)), 0,butorange5_1)
    mk.vspeed = (ud * 1)
}
if (tl1 == 825)
{
	battle_board.color_frame=c_white
	Battle_EndTurn()
    with (butorange5_1)
        instance_destroy()
}
