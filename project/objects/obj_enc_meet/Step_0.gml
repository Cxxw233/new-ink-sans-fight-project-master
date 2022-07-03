if (instance_exists(obj_enc_player) && talk_able == 1)
{
    if (obj_enc_player.x > 1600)
    {
        if (instance_exists(obj_enc_talk) == 0)
        {
            switch global.ENCOUNTED_TIMES
            {
                case 0:
                    switch talking
                    {
                       case 0:
                          scr_talk_enc("* Stop there.")
                            talk_able = 0
                            break
                        case 1:
                            scr_talk_enc("* You know who I am,right?")
                            break
                        case 2:
                            scr_talk_enc("* Huh.\n* 'Protector of AUs.'")
                            break
                        case 3:
                            scr_talk_enc("* ......Heh......\n* (Strange wry smile.)")
                            break
                        case 4:
                            scr_talk_enc("* Listen...__________\n* You know.__________ I am a painter.__________\n* Loving Undertale paintings.")
                            break
                        case 5:
                            scr_talk_enc("* And what I hate is...________\n")
                            break
                        case 6:
                            scr_talk_enc("* Seeing them being ruined.")
                            break
                        case 7:
                            scr_talk_enc("* Now what I hate...__________\n* Had happened.")
                            break
                        case 8:
                            scr_talk_enc("* What made it happen...__________\n* I___s___ y___o___u___.")
                            break
                        case 9:
                            scr_talk_enc("* But...\n__________* I am not expecting to the fight.")
                            break
                        case 10:
                            scr_talk_enc("* A fight could not turn back anything.")
                            break
                        case 11:
                            scr_talk_enc("* 'They' had proved that.__________\n* Huh?__________\n* (Another strange wry smile.)")
                            break
                        case 12:
                            scr_talk_enc("* So...If you could...__________\n* Now leave here.\n* And never come back.")
                            break
                        case 13:
                            scr_talk_enc("* ._____._____._____\n* Well,you didn't.")
                            break
                        case 14:
                            scr_talk_enc("* .___.___.___")
                            break
                        case 15:
                            scr_talk_enc("* .___.___.___")
                            break
                        case 16:
                            scr_talk_enc("* .___.___.___")
                            break
                        case 17:
                            scr_talk_enc("* I had done many wrong works.")
                            break
                        case 18:
                            scr_talk_enc("* People said I can not handle this.")
                            break
                        case 19:
                            scr_talk_enc("* This time.__________\n* I choose what I think is right.")
                            break
                        case 20:
                            instance_create_depth(0, 0, 0, obj_enc_intro)
                            talking = 21
                    }

                    break			
			}
			}
			}
			}