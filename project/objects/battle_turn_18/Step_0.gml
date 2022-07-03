a++
if xt=1{
if a>1&&a<=30
battle_enemy_inkp1.xj-=4
if a=1{
instance_create_depth(0,0,battle_enemy_inkp1.depth+1,but6_1_1)
Battle_SetSoul(battle_soul_blue)
battle_soul.x=45
battle_soul.y=376
}
if glu=640
glu=0
glu+=32
if a%irandom_range(40,60)=0{
        mk = instance_create_depth(-36, -20, 0,gb)
        mk.image_angle = 0
        mk.xto = choose(glu,glu,glu,glu,battle_soul.x)
        mk.yto = 260
        mk.tuse = 20
        mk.anto = 0
        mk.sprite_index = bssp59
        mk.image_xscale = 1
        mk.xsca = 1
        mk.spr = bssp60
        mk.spr2 = bssp61
        mk.alarm[0] = 21
}}
if xt=2
{
	battle_soul.x=320
	a2++
	if instance_exists(but99_53){
	xx+=2
	but99_53.x-=xx
	}
	if a2=1{
		scr_blackscreen(10)
audio_play_sound(snd_noise,100,0)
	inkdepth=battle_enemy_inkp1.depth
	battle_enemy_inkp1.depth=DEPTH_BATTLE.BOARD-9999999
	but6_1_1.depth=DEPTH_BATTLE.BOARD-9999999

	Battle_SetBoardSize(700,65,500,700,20)
}


     if (a2 >= 40 && (!((a2 % 20))) && a2 <= 180)
    {
        c = instance_create_depth(640, (353 - ((a2 - 40) / 2)), 0,but6_5)
        c.image_yscale = (1 + (((a2 - 40) / 2) / 32))
    }
	if (a2 == 200)
    {
        c1 = instance_create_depth(640, 283, (depth - 1), but6_5)
        c1.image_xscale = 10
        c1.image_yscale = 0.5
        c2 = instance_create_depth(640, 187, (depth - 1), but6_5)
        c2.image_xscale = 10
        c2.image_yscale = -0.5
            cc = instance_create_depth(784, 251, (depth - 1), but6_10)
            cd = instance_create_depth(784, 219, (depth - 1), but6_10)
            cd.image_yscale = -1
            c9 = instance_create_depth(720, 252, (depth - 1), but6_10)
            c4 = instance_create_depth(720, 219, (depth - 1), but6_10)
            c4.image_yscale = -1
            c11 = instance_create_depth(848, 252, (depth - 1), but6_10)
            c6 = instance_create_depth(848, 219, (depth - 1), but6_10)
            c6.image_yscale = -1
            c12 = instance_create_depth(654, 252, (depth - 1), but6_10)
            c7 = instance_create_depth(654, 219, (depth - 1), but6_10)
            c7.image_yscale = -1
            c13 = instance_create_depth(910, 252, (depth - 1), but6_10)
            c8 = instance_create_depth(910, 219, (depth - 1), but6_10)
            c8.image_yscale = -1
			        for (i = 0; i <= 9; i++)
        {
            c = instance_create_depth((640 + (32 * i)), 331, (depth - 1), but6_10)
            c.image_yscale = -1
            instance_create_depth((640 + (32 * i)), 139, (depth - 1), but6_10)
        }
		 instance_create_depth(1350, 280, (depth - 1), but99_55)
}
    if (a2 >= 280 && a2 < 290)
    {
        ts = (((a2 - 280) / 5) * 8.6)
        with (c1)
            y += other.ts
        with (c2)
            y += other.ts
        with (but6_10)
            y += other.ts
    }
	if a2>500&&xt=2{
	if glu=640
glu=0
glu+=32
        mk = instance_create_depth(-36, -20, 0,gb)
        mk.image_angle = 0
        mk.xto = glu
        mk.yto = 260
        mk.tuse = 20
        mk.anto = 0
        mk.sprite_index = bssp59
        mk.image_xscale = 1
        mk.xsca = 1
        mk.spr = bssp60
        mk.spr2 = bssp61
        mk.alarm[0] = 21
	}}
if xt=3
{
	a3++
	
	battle_soul.x=320
	//Battle_SetBoardSize(65-c,65+c,500,700-ender,1)
	if battle_soul.y<=242 or battle_soul.y>=398
	battle_soul.y=310
	battle_enemy_inkp1.xj+=20
	but6_1_1.xj+=20
	if 	battle_enemy_inkp1.xj>740
		battle_enemy_inkp1.xj=-740
	if 	but6_1_1.xj>740
		but6_1_1.xj=-740
	
	if a3=1
	{
		instance_create_depth(320, -64, 0,but6_6)
		scr_blackscreen(10)
audio_play_sound(snd_noise,100,0)
			Battle_SetBoardSize(65,65,500,700,1)
	
}
    if (frac((a3 / 30)) == 0)
    {
        instance_create_depth(740, choose(306, 220), -5, but6_2)
    }
	if a3=366
	{instance_create_depth(280, -64, 0,but6_6)
	instance_create_depth(380, -64, 0,but6_6)
		instance_create_depth(480, -64, 0,but6_6)
	}
	if a3=600
	xt=4
}
if xt=4
{
	a4++
	battle_soul.x=320
	if a4=1{
	battle_enemy_inkp1.xj=0
	but6_1_1.xj=120
	Battle_SetBoardSize(65,65,500,283,30)
}
if a4=50
{
	    mk = instance_create_depth(-36, -20, 0,gb)
        mk.image_angle = 0
        mk.xto = 560
        mk.yto = 320
        mk.tuse = 20
        mk.anto = 360-90
        mk.sprite_index = inkgb
        mk.image_xscale = 3
        mk.xsca = 3
        mk.spr = bssp60
        mk.spr2 = bssp61
        mk.alarm[0] = 2000
}
if a4>50
but6_1_1.yj-=5
if a4=200{
	Battle_SetSoul(battle_soul_red)
			scr_blackscreen(10)
audio_play_sound(snd_noise,100,0)
	instance_destroy(gb)
	instance_destroy(but6_1_1)
	instance_destroy(but6_8)
Battle_EndTurn()
}
}
