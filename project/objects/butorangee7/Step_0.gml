a++
if (mode == 0)
{
    image_alpha -= (cos((a / 10)) / 15)
    if (((a - 1) % 40) == 0)
    {
        if (image_index == 1)
            image_index = 0
        else
            image_index = 1
    }
}
if (mode == 2)
{
    if (a < 60)
        image_alpha = 0.5
    if (a == 60)
        image_alpha = 1
    if (a >= 90)
        image_alpha -= 0.05
    if (a == 110)
        instance_destroy()
}
if (mode == 2)
{
    image_alpha -= (cos((a / 10)) / 15)
    if (a > 72)
        image_alpha -= 1
}
if (mode == 3)
{
    image_alpha -= (cos((a / 10)) / 15)
    image_index = 0
}
if (mode == 4)
{
	depth=DEPTH_BATTLE.BOARD-99999999999
    if (a == 1)
        instance_create_depth(0, 0, 0,gb1_3)
    image_index = 3
    if (image_xscale != 1 && a <= 10)
        image_xscale += 0.1
    if (a > 20)
    {
        if (image_xscale != 0)
            image_xscale -= 0.1
    }
    if (a == 31)
        instance_destroy()
}
if (mode == 5)
{
    image_index = 1
    image_alpha -= (cos((a / 10)) / 30)
}

