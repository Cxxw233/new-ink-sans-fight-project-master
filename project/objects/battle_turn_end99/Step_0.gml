a++
    cur = (a / room_speed)
    if audio_is_playing(global.bgm)
    {
        var audio = audio_sound_get_track_position(global.bgm)
        if (abs((audio - cur)) >= 0.01)
            audio_sound_set_track_position(global.bgm, cur)
    }
if (a >= 1289 && a <= 1319)
    boss1.xj -= ((1319 - a) / 3)
if (a >= 1324 && a < 1426 && ((a - 4) % 10) == 0)
    crgb((40 + ((a - 1324) * 3.25)), -50, (40 + ((a - 1324) * 3.25)), 200, 20, bssp199x, bssp200x, bssp201x, 30, 1, 1, 0, 0, 0, 0, gb)
if (a == 1430){
    scr_blackscreen(20)
	battle_enemy_inkp1.xj=0
	battle_enemy_inkp1.yj=20
	battle_enemy_inkp1.touxtt=bssp1a2
	battle_enemy_inkp1.shenxt=bssp2c1
}
if (a==1500)
xt=1;
if (xt==1)
crtalk1(380, 74, "Heya....../You win now.",1);
if (xt>=2){
audio_stop_all()
room_goto(room_credits);
}
