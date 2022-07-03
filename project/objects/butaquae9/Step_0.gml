if (image_index > 3)
{
    image_blend = irandom(16777215)
    if place_meeting(x, y, battle_soul)
    {
        Player_Hurt()
    }
}
if (ed == 1)
{
    image_index = choose(4, 5)
    image_alpha -= 0.1
    if (image_alpha == 0)
        instance_destroy()
}
