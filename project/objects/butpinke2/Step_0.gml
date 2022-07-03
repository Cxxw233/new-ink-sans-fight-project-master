var _temp_local_var_2;
xs = bkpinkextra.xs
ys = bkpinkextra.ys
ws = bkpinkextra.ws
hs = bkpinkextra.hs
if (c < 2)
{
    repeat floor(spd)
    {
        if (c == 0 && (y > (((ys + hs) - 5) - 8))&&(x > (((xs + ws) - 5) - 8))&&(y < ((ys + 5) + 8))&&(x < ((xs + 5) + 8)))
            c = 1
        if (c == 1 && x < bkpinkextra.xs || x > (bkpinkextra.xs + bkpinkextra.ws) || y < bkpinkextra.ys || y > (bkpinkextra.ys + bkpinkextra.hs))
        {
            if instance_exists(battle_soul)
                dir = point_direction(x, y, battle_soul.x, battle_soul.y)
            px[mc] = x
            py[mc] = y
            mc++
            c = 0
            spd += 0.5
            if (mc >= 20)
            {
                c = 2
                image_alpha = 0
            }
            else
            {
                var _temp_local_var_2 = (floor(spd) - 1)
                if (floor(spd) - 1)
                    continue
            }
            break
        }
        else
        {
            x += lengthdir_x(1, dir)
            y += lengthdir_y(1, dir)
        }
    }
    if place_meeting(x, y, battle_soul)
    {
        Player_Hurt()
    }
}
if (c == 2)
{
    a++
    if ((a % 200) == 80 || (a % 200) == 100 || (a % 200) == 120)
        instance_create_depth(x, y, 0,butpinke3).pt = id
}
if (c == 3 && instance_exists(gb1_3))
{
    vspeed = -3
    hspeed = choose(-1, 1)
    gravity = 0.1
    px[mc] = x
    py[mc] = y
    mc++
    c = 5
}
if (c == 4)
{
    wa -= 0.05
    if (wa == 0)
    {
        wa = -1
        alarm[0] = 100
    }
}
if (c == 5)
    dir += rd
image_angle = (dir + 90)
