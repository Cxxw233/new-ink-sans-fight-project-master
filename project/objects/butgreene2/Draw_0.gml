if (a == 21)
    a = 0
a++
repeat (4)
{
    i++
    draw_sprite_ext(battlegreen_1_3, 0, (320 + lengthdir_x((150 - a), (i * 90))), (240 + lengthdir_y((150 - a), (i * 90))), 1, 1, ((i * 90) - 90), c_white, (((a < 11 * a) * 0.1) + ((a > 10 * (21 - a)) * 0.1)))
}
tl2++
if (tl2 > 240)
    image_alpha -= 0.1
if (image_alpha == 0)
    instance_destroy()
 
