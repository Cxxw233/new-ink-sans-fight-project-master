if instance_exists(butyellowextra)
{
    if (butyellowextra.antialp == 0)
        image_alpha = 0.5
    else
        image_alpha = 1
}
if instance_exists(bkyellowextra)
    depth = DEPTH_BATTLE.BOARD-(bkyellowextra.depth + 1)
active = 0
