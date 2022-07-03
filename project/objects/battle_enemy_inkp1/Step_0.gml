Player_SetHp(nowhppl)
Player_SetHpMax(maxhppl)
    if (nowkr > 0)
        krtime += 1
    if (krtime >= 15&& instance_exists(battle_turn))&&nowhppl!=1{
        if (nowkr > 0)
        {
			nowhppl -= 1
            nowkr -= 1
            krtime = 0
        }
    }
    if (nowkr > 40)
        nowkr = 40
    if (nowkr > (nowhppl * 2))
        nowkr = (nowhppl * 2)
    if ((nowhppl + nowkr) > maxhppl)
        nowhppl = (maxhppl - nowkr)
if file_exists("green")
battle_enemy_inkp1.bthp[1] = -1
if file_exists("aqua")
battle_enemy_inkp1.bthp[2] = -1
if file_exists("blue")
battle_enemy_inkp1.bthp[3] = -1
if file_exists("purple")
battle_enemy_inkp1.bthp[4] = -1
if file_exists("pink")
battle_enemy_inkp1.bthp[5] = -1
if file_exists("red")
battle_enemy_inkp1.bthp[6] = -1
if file_exists("orange")
battle_enemy_inkp1.bthp[7] = -1
if file_exists("yellow")
battle_enemy_inkp1.bthp[8] = -1
if global.phase = 3
{
	if bthp[1] <=0&& bthp[2] <=0&& bthp[3] <=0&& bthp[4] <=0&& bthp[5] <=0&& bthp[6] <=0&& bthp[7] <=0&& bthp[8] <=0
	{
		audio_stop_sound(inkbgmp3)
	}
	
}
