audio_play_sound(snd_bell, 1, false)
switch irandom_range(1, 3)
{
    case 1:
        sprite_index = bsspxt3_boom1
        break
    case 2:
        sprite_index = bsspxt3_boom2
        break
    case 3:
        sprite_index = bsspxt3_boom3
        break
}
co = make_color_hsv((mcolorhue(((x - 40))) + 128), 255, 127)
depth=DEPTH_BATTLE.BULLET