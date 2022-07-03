ed = 1
alarm[1] = 0
alarm[0] = 60
with (butyellow5_1)
{
    for (i = 0; i < 54; i++)
        instance_create_depth(x, y, 0,butyellow5_5).direction = (i * 10)
    instance_destroy()
}
