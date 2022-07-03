switch kind
{
    case 1:
        alarm[0] = 1
        with (instance_create_depth(x, y, 0,butrede2))
        {
            image_xscale = 4
            image_yscale = 4
            vtx = (320 - ((320 - x) / 4))
            vty = y
            des = 0
            zou1 = 1
            ix = 2
            xd = 1
            xt = 10
        }
        break
    case 2:
        alarm[0] = 1
        so(8, 4, butrede2, a)
        so(8, 4, butrede2, b)
        a += 2.3333333333333335
        b -= 2.3333333333333335
        with (butrede2)
        {
            if (kind == 0)
                friction = -0.075
        }
        break
    case 3:
        alarm[0] = 7
        so(8, 4, butrede2, a)
        so(8, 4, butrede2, b)
        a += 15
        b -= 15
        break
}


 
