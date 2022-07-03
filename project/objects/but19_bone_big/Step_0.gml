if ((y + 275) >= 480 && instance_exists(but19_effect) == 0)
{
    repeat irandom_range(12, 20)
    {
        instance_create_depth((x + 10), (y + 275), -5, but19_effect)
        shocking = 1
        alarm[0] = 30
    }
}
if (y > 1000)
    instance_destroy()
if (shocking == 1)
{
    time += 1
    window_move_x(random_range(-5, 5))
    window_move_y(random_range(-5, 5))
    if (time == 4)
        window_set_position(window_x, window_y)
}

