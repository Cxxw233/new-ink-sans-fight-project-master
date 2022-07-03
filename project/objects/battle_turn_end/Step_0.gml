a++
if (a == 1)
{
    crtalk1(380, 74, "Heya./I wanna use/my special/attack now.",1)
    touxts=1
	xt = 2
}
if (xt == 3)
{
    crtalk1(380, 74, "But/here is a/BIG problem.",1)
    xt = 4
}
if (xt == 5)
{
    crtalk1(380, 74, "You know._____._____.",1)
    xt = 6
}
if (xt == 7)
{
    crtalk1(380, 74, "But_____ now_____.",1)
    xt = 8
}
if (xt == 9)
    tl1++
if (tl1 == 50)
{
	audio_stop_sound(global.bgm)
    Battle_SetMenuDialog("* You don't feel so good.&* Seems like you will have a&  hard battle with ink.")
	battle_enemy_inkp1.touxts=0
	battle_enemy_inkp1.touxtt=bssp1a2
	battle_enemy_inkp1.shenxt=bssp2c1
	global.ends=1
	Battle_SetTurnNumber(-1);
    global.phase=5
	f = file_bin_open("temp", 1)
    file_bin_write_byte(f, 4)
    file_bin_close(f)
	Battle_EndTurn()
}
