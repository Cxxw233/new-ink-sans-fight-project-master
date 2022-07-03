if (zou1 == 1)
{
    x += ((vtx - x) / 1)
    y += ((vty - y) / 1)
}
if (xd == 1 && image_xscale > ix)
{
    image_xscale -= 0.25
    image_yscale -= 0.25
}
if (xzz == 1)
{
    dirr += ((90 - dirr) / 10)
    x = ((bkredextra.xs + (bkredextra.ws / 2)) + lengthdir_x(len, (dirr + dir)))
    y = ((bkredextra.ys + (bkredextra.hs / 2)) + lengthdir_y(len, (dirr + dir)))
}
if (fdi == 1)
    fadeIn(fddi)
if (fdo == 1)
    fadeOut(fddo)
if (spdj == 1)
    speed -= (speed / 9)
if (xt == 1)
{
    time++
    if (time == 1)
    {
        dirj = (lr * 10)
        speed = 20
    }
    nde = 1
    image_xscale += ((1 - image_xscale) / 6)
    image_yscale += ((1 - image_yscale) / 6)
    direction += dirj
    speed -= (speed / 40)
    dirj -= (dirj / 20)
    if (roun == 1)
    {
        dird += ((180 - dird) / 30)
        x = (xc + lengthdir_x(len, (dir + dird)))
        y = (yc + lengthdir_y(len, (dir + dird)))
    }
}
if (xt == 2)
{
    image_xscale += ((1 - image_xscale) / 6)
    image_yscale += ((1 - image_yscale) / 6)
    x += (((320 + (lr * 320)) - x) / 6)
    y += ((200 - y) / 6)
    mk = instance_create(x, y, butrede2)
    mk.xt = 3
    mk.direction = random(360)
    mk.speed = 10
}
if (xt == 3)
{
    if (de == 1)
    {
        image_alpha -= 0.1
        speed -= (speed / 10)
        if (image_alpha == 0)
            instance_destroy()
    }
    image_xscale += ((0.5 - image_xscale) / 6)
    image_yscale += ((0.5 - image_yscale) / 6)
}
if (xt == 4)
{
    speed += ((5 - speed) / 10)
    direction += ((dirto - dir) / 2.5)
    dir += ((dirto - dir) / 20)
}
if (xt == 5)
{
    if (shoot == 0)
    {
        dird += ((180 - dird) / 30)
        x = (xc + lengthdir_x(len, (dir + dird)))
        y = (yc + lengthdir_y(len, (dir + dird)))
    }
    if (image_alpha < 1)
        mask_index = bssp359
}
if (xt == 6)
{
    time++
    mk = instance_create_depth(x, y, 0,butrede2)
    mk.xt = 7
    mk.direction = ((time * 30) + 180)
    mk.speed = 20
    mk.image_xscale = 1
    mk.image_yscale = 1
    if (time == 40)
    {
        instance_destroy()
        i = 0
        repeat (20)
        {
            i++
            mk = instance_create_depth(x, y, 0,butrede2)
            mk.xt = 8
            mk.image_xscale = 1
            mk.image_yscale = 1
            mk.direction = (i * 18)
            mk.speed = ((((20 + ((i % 2) * 10)) + ((i % 4) == 1 * 10)) / 8) * 4)
            mk.lr = 6
            mk.nde = 1
            mk = instance_create_depth(x, y, 0,butrede2)
            mk.xt = 8
            mk.image_xscale = 1
            mk.image_yscale = 1
            mk.direction = (i * 18)
            mk.speed = (((10 + ((i % 2) * 5)) / 8) * 4)
            mk.lr = -6
            mk.nde = 1
        }
    }
}
if (xt == 7)
    speed += ((5 - speed) / 5)
if (xt == 8)
{
    direction += lr
    time++
    if (time == 120)
        instance_destroy()
}
if (xt == 9)
{
    a++
    if (image_alpha == 1)
    {
        if ((a % 15) == 0)
        {
            var dirrr = random_range(0, 360)
            repeat (18)
            {
                f = instance_create_depth(x, y, 0,butrede8)
                f.direction = dirrr
                f.speed = 6.5
                f.xt = 10
                dirrr += 20
            }
        }
    }
    else
    {
        image_alpha += 0.05
        image_xscale = 6
        image_yscale = 6
        direction = -90
        speed = 3
    }
}
