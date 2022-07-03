if (mode == 1)
{
    time_dir += 1
    if (time_dir >= time_change)
    {
        time_change = (irandom(60) + 1)
        time_dir = 0
        direction = irandom_range(30, 150)
    }
}
image_alpha += (speed / 300)
if global.phase>2
instance_destroy()

 