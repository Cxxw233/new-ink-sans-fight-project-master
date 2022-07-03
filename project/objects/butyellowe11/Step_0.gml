image_speed = 0.25
if (image_index == 13 && instance_exists(battle_soul))
{
    repeat (3)
        instance_create_depth((x + irandom_range(-80, 80)), (y + irandom_range(-40, 40)), 0, butyellowe1)
}
if (de == 1)
{
    image_xscale += 0.02
    image_yscale = image_xscale
    image_alpha -= 0.15
}
if (image_alpha <= 0)
    instance_destroy()

