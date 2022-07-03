if (playerxt == 18)
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
        if (playerxb == 1 && mp >= 6)
        {
            mp = 6
            playerxb = 0
        }
        else if (playerxb == -1 && mp <= 1)
        {
            mp = 1
            playerxb = 0
        }
        else
        {
            mp += (sign(playerxb) * 0.2)
            if (mp > 6)
                mp = 6
            else if (mp < 1)
                mp = 1
        }
        if (mp == 1 || mp == 2 || mp == 3 || mp == 4 || mp == 5 || mp == 6)
            playerxb = 0
        battle_soul.x = ((320 - (mc * 2.5)) + (mc * (mp - 1)))
    }
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
        if (playeryb == 1 && mp >= 6)
        {
            mp = 6
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
            if (mp > 6)
                mp = 6
            else if (mp < 1)
                mp = 1
        }
        if (mp == 1 || mp == 2 || mp == 3 || mp == 4 || mp == 5 || mp == 6)
            playeryb = 0
        battle_soul.y = ((315 - (mc * 2.5)) + (mc * (mp - 1)))
    }
time += 0.5
if (time == 20)
    butpinkextra.xt = 2
