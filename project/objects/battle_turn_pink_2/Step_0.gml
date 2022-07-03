tl1++
if (tl1 == 60)
{
    instance_create_depth(130, bkpink2.mty1, 0,butpink2_1)
    instance_create_depth(510, bkpink2.mty2, 0,butpink2_1)
    instance_create_depth(130, bkpink2.mty3, 0,butpink2_1)
}
if (tl1 == 120)
{
    instance_create_depth(510, bkpink2.mty1, 0,butpink2_1)
    instance_create_depth(130, bkpink2.mty2, 0,butpink2_1)
    instance_create_depth(510, bkpink2.mty3, 0,butpink2_1)
}
if (tl1 == 180)
{
    instance_create_depth(130, bkpink2.mty1, 0,butpink2_1)
    instance_create_depth(130, bkpink2.mty2, 0,butpink2_1)
    instance_create_depth(510, bkpink2.mty2, 0,butpink2_1)
    instance_create_depth(510, bkpink2.mty3, 0,butpink2_1)
}
if (tl1 == 240)
{
    instance_create_depth(510, bkpink2.mty1, 0,butpink2_1)
    instance_create_depth(510, bkpink2.mty2, 0,butpink2_1)
    instance_create_depth(130, bkpink2.mty2, 0,butpink2_1)
    instance_create_depth(130, bkpink2.mty3, 0,butpink2_1)
}
if (tl1 >= 360 && (tl1 % 20) == 0 && tl1 <= 540)
{
    ccd = choose(1, 2, 3)
    if (ccd != 1)
        instance_create_depth(130, bkpink2.mty1, 0,butpink2_2)
    if (ccd != 2)
        instance_create_depth(130, bkpink2.mty2, 0,butpink2_2)
    if (ccd != 3)
        instance_create_depth(130, bkpink2.mty3, 0,butpink2_2)
}
if (tl1 == 600)
{
    ccd = choose(bkpink2.mty1, bkpink2.mty2, bkpink2.mty3)
    crgb(660, ccd, 610, ccd, 10, bssp7, bssp8, bssp9, 30, 1, 1.5, 0, 0, -90, -90, gb)
}
if (tl1 == 630)
    butpink2_3.c = 1
if (tl1 == 660)
{
	instance_destroy(bkpink2)
    battle_soul.image_blend=c_white
	battle_soul.sprite_index=spr_battle_soul_red
	battle_board.color_frame= c_white
    Battle_EndTurn()
}
