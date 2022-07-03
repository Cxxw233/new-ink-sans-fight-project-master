if (cr == 1)
{
    x -= (((x + 40) - (80 * nb)) / 3)
    y -= ((y - 40) / 3)
    image_angle /= 3
    a++
    if (a == 50)
    {
        x = ((80 * nb) - 40)
        y = 40
        instance_create_depth(x, y, 0,butxt3bottletxs)
    }
    if (a == 51)
    {
        image_index++
        audio_play_sound(mus_create, 1, false)
    }
    if (!instance_exists(gameover))
        global.dye[nb] = battle_enemy_inkp1.bthp[nb] == 0
    if (global.dye[nb] == 1 && c == 0 && (!instance_exists(gameover)))
    {
        c = 1
        global.exobjt = nb
        global.robj = 1
        pc = instance_create_depth(x, y, 0,butxt3bottlepiece)
        pc.image_index = 1
        pc.gravity = 0.2
        pc.hspeed = (-1 + random_range(-0.5, 0.5))
        pc.vspeed = -4
        pc.depth = -4
        pc.aspeed = random_range(-0.5, 0.5)
        pc = instance_create_depth(x, y, 0,butxt3bottlepiece)
        pc.image_index = 2
        pc.gravity = 0.2
        pc.hspeed = (1 + random_range(-0.5, 0.5))
        pc.vspeed = -4
        pc.depth = -4
        pc.aspeed = random_range(-0.5, 0.5)
        pc = instance_create_depth(x, y, 0,butxt3bottlepiece)
        pc.image_index = 3
        pc.gravity = 0.2
        pc.hspeed = (-1 + random_range(-0.5, 0.5))
        pc.depth = -4
        pc.aspeed = random_range(-0.5, 0.5)
        pc = instance_create_depth(x, y, 0,butxt3bottlepiece)
        pc.image_index = 4
        pc.gravity = 0.2
        pc.hspeed = (1 + random_range(-0.5, 0.5))
        pc.depth = -4
        pc.aspeed = random_range(-0.5, 0.5)
        instance_destroy()
    }
    if (battle_enemy_inkp1.bthp[nb] == 4)
        m++
    if (battle_enemy_inkp1.bthp[nb] == 3)
        m += 1.5
    if (battle_enemy_inkp1.bthp[nb] == 2)
        m += 2
    if (battle_enemy_inkp1.bthp[nb] == 1)
        m += 3
    if (battle_enemy_inkp1.bthp[nb] == 0)&&qs=0
	{
	instance_create_depth(0,0,0,extraallbut)
	qs=1
	}
    y = (40 + ceil((sin((m / 40)) * 5)))
    x = ((-40 + (80 * nb)) + (((choose(-1, 1) * irandom((5 - battle_enemy_inkp1.bthp[nb]))) * irandom((5 - battle_enemy_inkp1.bthp[nb]))) / 3))
	if (battle_enemy_inkp1.bthp[nb] == -1)
	instance_destroy()
}

 