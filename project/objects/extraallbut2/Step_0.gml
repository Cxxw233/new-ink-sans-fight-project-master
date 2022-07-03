a++
if (a <= 60)
    image_alpha = (a / 60)
if (a == 120)
{
    if instance_exists(butxt3bottles)
    {
        Battle_SetMenuDialog("* But nothing happened.")
        butxt3bottles.amgc = 0
    }
if battle_enemy_inkp1.bthp[1] = 0
{
	f = file_bin_open("green", 1)
    file_bin_write_byte(f, 1)
    file_bin_close(f)
}
if battle_enemy_inkp1.bthp[2] = 0
{
	f = file_bin_open("aqua", 1)
    file_bin_write_byte(f, 1)
    file_bin_close(f)
}
if battle_enemy_inkp1.bthp[3] = 0
{
	f = file_bin_open("blue", 1)
    file_bin_write_byte(f, 1)
    file_bin_close(f)
}
if battle_enemy_inkp1.bthp[4] = 0
{
	f = file_bin_open("purple", 1)
    file_bin_write_byte(f, 1)
    file_bin_close(f)
}
if battle_enemy_inkp1.bthp[5] = 0
{
	f = file_bin_open("pink", 1)
    file_bin_write_byte(f, 1)
    file_bin_close(f)
}
if battle_enemy_inkp1.bthp[6] = 0
{
	f = file_bin_open("red", 1)
    file_bin_write_byte(f, 1)
    file_bin_close(f)
}
if battle_enemy_inkp1.bthp[7] = 0
{
	f = file_bin_open("orange", 1)
    file_bin_write_byte(f, 1)
    file_bin_close(f)
}
if battle_enemy_inkp1.bthp[8] = 0
{
	f = file_bin_open("yellow", 1)
    file_bin_write_byte(f, 1)
    file_bin_close(f)
}
	Battle_EndTurn()
    global.phase=3
	battle_enemy_inkp1.nowkr=extraallbut.kr
    battle_enemy_inkp1.nowhppl=extraallbut.mh
    battle_enemy_inkp1.maxhppl=extraallbut.oh
	if instance_exists(butbluee1)
	    with (butbluee1)
            instance_destroy()
	if instance_exists(butbluee5)
	    with (butbluee5)
            instance_destroy()
	if instance_exists(butpinke1)
	    with (butpinke1)
            instance_destroy()
    with (extraallbut)
        instance_destroy()
	if instance_exists(bkblueextra)
	    with (bkblueextra)
            instance_destroy()
	if instance_exists(bkaquaextra)
	    with (bkaquaextra)
            instance_destroy()
	if instance_exists(bkgreenextra)
	    with (bkgreenextra)
            instance_destroy()
	if instance_exists(bkpurpleextra)
	    with (bkpurpleextra)
            instance_destroy()
	if instance_exists(bkpinkextra)
	    with (bkpinkextra)
            instance_destroy()
	if instance_exists(bkorangeextra)
	    with (bkorangeextra)
            instance_destroy()	
	if instance_exists(bkredextra)
	    with (bkredextra)
      instance_destroy()

if battle_enemy_inkp1.bthp[1] <=0&& battle_enemy_inkp1.bthp[2] <=0&& battle_enemy_inkp1.bthp[3] <=0&& battle_enemy_inkp1.bthp[4] <=0&& battle_enemy_inkp1.bthp[5] <=0&& battle_enemy_inkp1.bthp[6] <=0&& battle_enemy_inkp1.bthp[7] <=0&& battle_enemy_inkp1.bthp[8] <=0
{shd.overs=1
f = file_bin_open("xt3end", 1)
file_bin_write_byte(f, 1)
file_bin_close(f)
        b -= 0.02
        if (b > 0.1)
            audio_sound_pitch(global.bgm, b)
Battle_SetMenuDialog("* ...&* Now!")

}}
if (a == 158){
    instance_destroy()
}
 