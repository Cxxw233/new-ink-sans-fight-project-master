if index<10 && bl1=0{
index++
}
if index=10
{
	bl1=1
}
mty1 = ((((250 - (index * 1)) * 3) + 390) / 4)
mty2 = (((250 - (index * 1)) + 390) / 2)
mty3 = (((250 - (index * 1)) + 1170) / 4)
if instance_exists(battle_soul)
{
    if (playerxt == 16)
    {
		if keyboard_check_pressed(vk_up)
		{
			mp-=1
		}
		if keyboard_check_pressed(vk_down)
		{
			mp+=1
		}
		battle_soul.sprite_index=spr_battle_soul
		battle_soul.image_blend=make_color_rgb(255, 0, 255)
        if (playeryb == 1 && mp >= 3)
        {
            mp = 3
            playeryb = 0
        }
        else if (playeryb == -1 && mp <= 1)
        {
            mp = 1
            playeryb = 0
        }
        else
        {
            mp += (sign(playeryb) * 0.2)
            if (mp > 3)
                mp = 3
            else if (mp < 1)
                mp = 1
        }
        if ((mp == 1 || mp == 2 || mp == 3) && instance_exists(battle_soul))
            playeryb = 0
        battle_soul.y = (mty1 + (((mty3 - mty1) / 2) * (mp - 1)))
    }
}
