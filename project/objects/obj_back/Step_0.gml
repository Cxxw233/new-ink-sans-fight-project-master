glitch_time += 1
if (glitch_time >= irandom_range(3, 10))
{
    glitch_time = 0
    repeat (1)
    {
        ins = instance_create_depth(random(640), 300,0 ,obj_point)
        ins.image_xscale = random_range(1, 3)
        ins.image_yscale = ins.image_xscale
    }
}