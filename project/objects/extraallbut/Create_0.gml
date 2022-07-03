c = instance_create_depth((-40 + (80 * global.exobjt)), 40, 0,extraallbut1)
c.ty = global.exobjt
switch global.exobjt
{
    case 1:
        c.image_blend = 65280
        break
    case 2:
        c.image_blend = c_aqua
        break
    case 3:
        c.image_blend = c_blue
        break
    case 4:
        c.image_blend = 16711808
        break
    case 5:
        c.image_blend = c_fuchsia
        break
    case 6:
        c.image_blend = c_red
        break
    case 7:
        c.image_blend = c_orange
        break
    case 8:
        c.image_blend = c_yellow
        break
}

global.exobjt = 0
global.robj = 0