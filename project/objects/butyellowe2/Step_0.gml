if (side == 1)
{
    if (a < 15)
    {
        a++
        x += (16 - a)
    }
    if (de == 1)
    {
        b++
        x += (2 + b)
    }
}
if (side == 2)
{
    if (a < 15)
    {
        a++
        x -= (16 - a)
    }
    if (de == 1)
    {
        b++
        x -= (2 + b)
    }
}
if (side == 3)
{
    if (a < 15)
    {
        a++
        x += (16 - a)
    }
    if (de == 1)
        hspeed = -3
}
switch mode
{
    case 0:
        image_index = 2
        break
    case 1:
        image_index = 0
        break
    case 2:
        image_index = 1
        break
}


