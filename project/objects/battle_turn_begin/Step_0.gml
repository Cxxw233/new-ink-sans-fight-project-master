switch xt
{
    case 0:
        crtalk1(380, 74, "You are still here_____._____._____.", 1)
        scr_touxt()
        xt = 1
        break
    case 1:
        xt++
        break
    case 2:
        scr_touxt()
        xt++
        break
    case 4:
        crtalk1(380, 74, "Heh./Heh._____._____./Heh._____._____.", 1)
        scr_touxt()
        xt = 5
        break
    case 5:
        xt++
        break
    case 6:
        scr_touxt()
        xt++
        break
    case 8:
        crtalk1(380, 74, "Why can't you/understand._____._____.", 1)
        scr_touxt()
        xt = 9
        break
    case 9:
        xt++
        break
    case 10:
        scr_touxt()
        xt++
        break
    case 12:
        crtalk1(380, 74, "Why are you._____._____.", 1)
        scr_touxt()
        xt = 13
        break
    case 13:
        xt++
        break
    case 14:
        scr_touxt()
        xt++
        break
    case 16:
        crtalk1(380, 74, "Heh._____._____./Okay.", 1)
        scr_touxt()
        xt = 17
        break
    case 17:
        scr_touxt()
        xt++
        break
    case 18:
        scr_touxt()
        xt++
        break
    case 20:
        a++
if (a == 12)
{
	scr_touxt()
  audio_play_sound(snd_arrow, 1, false) 
}
if (a = 11){
	scr_touxt()
instance_create_depth(0,0,0,obj_phase3_chara_1)	
Battle_SetSoul(battle_soul_red)
}
if (a == 13)
{
     repeat (8)
           {
                mk = instance_create_depth((battle_enemy_inkp1.body_x + 240), (battle_enemy_inkp1.body_y + 104), 0, butxt3bottles)
                mkn++
                mk.cr = mkn
                mk.nb = mkn
                switch mkn
                {
                    case 1:
                        mk.x += 78
                        mk.y += 54
                        break
                    case 2:
                        mk.x += 82
                        mk.y += 58
                        break
                    case 3:
                        mk.x += 86
                        mk.y += 60
                        break
                    case 4:
                        mk.x += 88
                        mk.y += 64
                        break
                    case 5:
                        mk.x += 92
                        mk.y += 66
                        break
                    case 6:
                        mk.x += 96
                        mk.y += 70
                        break
                    case 7:
                        mk.x += 100
                        mk.y += 74
                        break
                    case 8:
                        mk.x += 104
                        mk.y += 76
                        break
                }

            }
            mkn = 0
        }
if a == 52{
	instance_create_depth(0,0,0,obj_phase3_chara_2)	
	Battle_EndTurn()
	global.phase=3
	global.bgm=audio_play_sound(inkbgmp3,100,1)
	f = file_bin_open("temp", 1)
    file_bin_write_byte(f, 2)
    file_bin_close(f)
		Battle_SetMenuDialog("* ...")
}
break
}