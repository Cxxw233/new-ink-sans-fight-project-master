dir1 -= 10
dir2 += 10
if (side == 1)
{
    if (dir1 >= -2160)
    {
        mk1 = instance_create_depth(x, y, 0,butyellowe8)
        mk1.direction -= dir1
        mk1.speed = 4.5
        mk1.image_xscale = random_range(1.25, 2.25)
    }
}
if (side == 2)
{
    if (dir2 <= 2160)
    {
        mk2 = instance_create_depth(x, y, 0,butyellowe8)
        mk2.direction += dir2
        mk2.speed = 4.5
        mk2.image_xscale = random_range(1.25, 2.25)
    }
}
 
