if (place_meeting(x, y, battle_bullet) || place_meeting(x, y, butstlkill))
    image_index = 1
else
    image_index = 0
if (c == 1)
{
    image_alpha -= 0.05
    if (image_alpha == 0)
        instance_destroy()
}
