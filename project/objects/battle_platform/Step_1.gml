var _temp_local_var_2;
image_xscale = (width / 2)
image_angle = angle
sprite_index = (sticky ? spr_battle_platform_green : spr_battle_platform_purple)
if (!bounce_x)
    x += move_x
else
{
    var _temp_local_var_2 = (abs(move_x) * 10)
    if ((abs(move_x) * 10) <= 0)
    {
    }
    else
    {
        while 1
        {
            if (!place_meeting((x + (sign(move_x) * 0.1)), y, block))
            {
                x += (sign(move_x) * 0.1)
                _temp_local_var_2 = ((abs(move_x) * 10) - 1)
                if ((abs(move_x) * 10) - 1)
                {
                }
            }
            else
                move_x = (-move_x)
        }
    }
}
y += move_y
if (Battle_GetState() != 3)
    instance_destroy()

 