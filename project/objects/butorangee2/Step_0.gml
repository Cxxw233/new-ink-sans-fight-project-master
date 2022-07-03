a++
if (mode == 1)
{
    if (a >= 10)
    {
        if ((a % 85) == 0)
        {
            var rad = random_range(270, 370)
            GMU_Anim_New(id, "y", 1, 11, y, (rad - y), (abs((rad - y)) / 2), 50)
            but = instance_create_depth((x - 92), (y + 2), 0, butorangee3)
            but.image_alpha = 0
            but.mode = 2
        }
    }
}
if (mode == 2)
{
    b++
    if (b == 30)
    {
        but = instance_create_depth((x + 90), (y - 2), 0, butorangee3)
        but.image_alpha = 0
        but.mode = 5
    }
}
 
