event_inherited()

a++
if ((a % 3) == 0)
{
    but = instance_create_depth(x, y, 0, obj_effect)
    but.sprite_index = sprite_index
    but.image_speed = 0
    but.depth = -599
    but.image_index = 0
    but.mode = 0
    but.board = 1
}
if (keyboard_check(vk_up) && keyboard_check(vk_right))
    dir = 45
else if (keyboard_check(vk_up) && keyboard_check(vk_left))
    dir = 135
else if (keyboard_check(vk_down) && keyboard_check(vk_left))
    dir = 225
else if (keyboard_check(vk_down) && keyboard_check(vk_right))
    dir = -45
else if keyboard_check(vk_down)
    dir = -90
else if keyboard_check(vk_up)
    dir = 90
else if keyboard_check(vk_left)
    dir = 180
else if keyboard_check(vk_right)
    dir = 0
if (Battle_GetState() == (3 << 0) && moveable && mode != 1 && dir != -1)
{
    var SPD = Player_GetSpdTotal()
    SPD = (Input_Check((5 << 0)) ? (SPD / 2) : SPD)
    repeat (SPD * 10)
    {
        if ((!position_meeting(x, (y - (sprite_height / 2)), block)) && (!position_meeting(x, (y + (sprite_height / 2)), block)) && (!position_meeting((x - (sprite_width / 2)), y, block)) && (!position_meeting((x + (sprite_width / 2)), y, block)))
        {
            x += lengthdir_x(0.1, dir)
            y += lengthdir_y(0.1, dir)
        }
    }
}
if (mode == 1)
{
    SPD = Player_GetSpdTotal()
    SPD = (Input_Check((5 << 0)) ? (SPD / 2) : SPD)
    repeat (SPD * 10)
    {
        if Input_Check((0 << 0))
        {
            if (!position_meeting(x, (y - (sprite_height / 2)), block))
                y -= 0.1
        }
        if Input_Check((1 << 0))
        {
            if (!position_meeting(x, (y + (sprite_height / 2)), block))
                y += 0.1
        }
    }
}
