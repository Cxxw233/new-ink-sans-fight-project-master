a++
if (a <= 60)
    xc += 13.333333
if (a == 60)
{
    if instance_exists(butxt3bottles)
        butxt3bottles.amgc = 1
    battle_enemy_inkp1.image_alpha = 0
    switch global.ty
    {
        case 2:
            global.phase = 4
            c = instance_create_depth(0, 0, 0,butaquaextra)
			instance_create_depth(0, 0, 0,bkaquaextra)
            break
        case 3:
            global.phase = 4
            c = instance_create_depth(0, 0, 0,butblueextra)
			instance_create_depth(0, 0, 0,bkblueextra)
            break
        case 4:
            global.phase = 4
            c = instance_create_depth(0, 0, 0,butpurpleextra)
			instance_create_depth(0, 0, 0,bkpurpleextra)
            break
        case 5:
            global.phase = 4
            c = instance_create_depth(0, 0, 0,butpinkextra)
			instance_create_depth(0, 0, 0,bkpinkextra)
            break
        case 1:
            global.phase = 4
            c = instance_create_depth(0, 0, 0,butgreenextra)
			instance_create_depth(0,0,0,bkgreenextra)
            break
        case 8:
            global.phase = 4
            c = instance_create_depth(0, 0, 0,butyellowextra)
			instance_create_depth(0, 0, 0,bkyellowextra)
            break
        case 7:
            global.phase = 4
            c = instance_create_depth(0, 0, 0,butorangeextra)
			instance_create_depth(0, 0, 0,bkorangeextra)
            break
	    case 6:
            global.phase = 4
            c = instance_create_depth(0, 0, 0,butredextra)
			instance_create_depth(0, 0, 0,bkredextra)
            break
    }

    extraallbut.mh = battle_enemy_inkp1.maxhppl
    extraallbut.oh = battle_enemy_inkp1.nowhppl
	extraallbut.kr = battle_enemy_inkp1.nowkr
    battle_enemy_inkp1.nowkr=0
    battle_enemy_inkp1.nowhppl=198
    battle_enemy_inkp1.maxhppl=198
}
if global.phase = 4
{
    b -= 0.1
    if audio_is_playing(inkbgmp3)
        audio_sound_pitch(inkbgmp3, b)
    if (!audio_is_playing(inkbgmp4))
        global.bgm = audio_play_sound(inkbgmp4, 100, true)
}
if (a >= 120 && image_alpha > 0)
    image_alpha -= 0.05
if (a >= 150 && ((!audio_is_playing(inkbgmp3)) || b < 0.1))
    instance_destroy()

 