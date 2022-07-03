a++
if (a == 1)
{
    image_alpha = 1
    xc = 0
}
if (a >= 1 && a <= tm)
    xc = soft_change((a / tm))
if (a == (tm + 5))
{
    with (mtg)
        event_user(0)
    mtg.image_alpha = 1
}
if (a >= (tm + 5) && a <= ((2 * tm) + 5))
    xc = soft_change(((((2 * tm) + 5) - a) / tm))
if (a == (((2 * tm) + 5) - 1))
    instance_destroy()
