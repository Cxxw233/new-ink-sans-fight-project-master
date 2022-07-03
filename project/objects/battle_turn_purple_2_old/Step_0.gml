tl1++
if (tl1 == 30)
{
    crgb(-20, 310, 100, 310, 30, bssp7, bssp8, bssp9, 40, 1, 1, 0, 0, 90, 90, gb)
    crgb(257, -20, 257, 100, 30, bssp7, bssp8, bssp9, 40, 1, 1, 0, 0, 0, 0, gb)
    crgb(381, -20, 381, 100, 30, bssp7, bssp8, bssp9, 40, 1, 1, 0, 0, 0, 0, gb)
}
if (tl1 == 225)
{
    instance_create_depth(160, 310, 0, butpurple1_3)
    instance_create_depth(480, 310, 0,butpurple1_3)
}
if (tl1 == 225)
{
    mk = instance_create_depth(320, 310, 0,butpurple1_4)
    mk.image_angle = 45
    mk.anj = 4
    mk = instance_create_depth(320, 310, 0,butpurple1_4)
    mk.image_angle = -45
    mk.anj = -4
}
if (tl1 == 585)
{
    butpurple1_2.de = 1
}
if (tl1 == 585)
{
    butpurple1_4.de = 1
}
if (tl1 == 600)
{
    if instance_exists(obj_phase2_4_board)
        instance_destroy(obj_phase2_4_board)
    if instance_exists(obj_phase2_4_soul)
        instance_destroy(obj_phase2_4_soul)
    Battle_EndTurn()
    instance_destroy()
    global.frozen = 0
}