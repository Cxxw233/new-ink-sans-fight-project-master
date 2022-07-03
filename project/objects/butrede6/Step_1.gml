SIN++
alp = (sin((SIN / 20)) * 2)
a++
if (a > 60 && alp <= 0)
{
    SIN = -10
    for (i = 0; i < 6; i++)
    {
        b = instance_create_depth(((bkredextra.xs + (bkredextra.ws / 2)) + x), ((bkredextra.ys + 12) + (i * 27)), 0,butrede5)
        b.dir = dir
        b.c = c
        dir += 60
    }
    instance_destroy()
}
 
