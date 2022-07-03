if xt=0{
time += 1
    if (frac((time / 30)) == 0)
    {
        if (k == 1 && time != 80)
        {
            instance_create_depth(27, 305, 0, obj_bone_basic)
            var jb = instance_create_depth(597, 335, 0, obj_bone_basic_p5_1)
			jb.direction = 180
            k = 0
        }
        else
            k = 1
        instance_create_depth(27, 355, 0, obj_bone_basic_p5_2)
    }
    if (time >= 60)
    { 
		to_end+=1
		time =0
    }
	with (obj_bone_basic)
        speed = 2.33333
	with (obj_bone_basic_p5_1)
        speed = 2.33333
    with (obj_bone_basic_p5_2)
        speed = 3.33333
if time=50{
crgb(battle_soul.x, -40, battle_soul.x, 160, 20, bssp7, bssp8, bssp9, 30, 0.5, 0.5, 0, 0, 0, 0, gb3)
c.image_blend=c_orange}
timer++
if timer%40=0
instance_create_depth(20,320+irandom_range(-7,7),0,obj_phase5_tran)
if timer%30=0
xj1=choose(0,0,0,0,0,0,0,0,0,5,0,0,10,20,10,0,15,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,20,0,0,0,10,15,0,15,0,0,0,0,10,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
if to_end=20{
scr_blackscreen(20)
time=0
xt=1
to_end=0
audio_stop_sound(inkbgmoldp1)
global.bgm=audio_play_sound(bgm_battle_underterror, 100, true)
battle_enemy_inkp1.xj=-1200
battle_enemy_inkp1.nowhppl=56
battle_enemy_inkp1.maxhppl=56
battle_enemy_inkp1.nowkr=0
global.terror=1
global.ukr=0
Battle_SetBoardSize(85,65,130,130,1)
}}
if xt=1
{
	time++
	if time=1
	instance_create_depth(0,0,0,but15_1)
	 tl1+=1
  if tl1=20{
    instance_create_depth(-66,390,0,but15_3a1)
  }
  if tl1=86{
    instance_create_depth(-66,390,0,but15_3a1)
  }
  if tl1=152{
    instance_create_depth(-66,390,0,but15_3a1)
  }
  if tl1=625{
	  Battle_SetSoul(battle_soul_red)
    instance_create_depth(500,310,0,but15_4)
  }
  if tl1=675{
    mk=instance_create_depth(320,-20,0,but15_6)
    mk.xto=320
    mk.yto=190
    mk.tuse=20
    mk.xsca=1
    mk.sprite_index=bssp179
	mk.spr=bssp24
	mk.spr2=bssp25
    mk.alarm[0]=30
  }
  if tl1=850
  {
	  scr_blackscreen(20)
	  but15_1.xt=1
	  tl1=0
	  xt=2
  }
}
if xt=2
{
	tl1++
	    if ((tl1 >= 30 && (tl1 % 55) == 0 && tl1 < 600) && instance_exists(battle_soul))
    {
        c = instance_create_depth(320, -70, 0,gb)
        c.xto = irandom_range(70, 570)
        c.yto = 70
        c.tuse = 20
        c.anto = (point_direction(c.xto, c.yto, battle_soul.x, battle_soul.y) + 90)
        c.sprite_index = bssp179
        c.image_xscale = 0.5
		c.spr = bssp24
		c.spr2 = bssp25
		c.xsca=1
        c.alarm[0] = 30
		var gb_x_start = choose(random_range(-300, -100), random_range(740, 1040))
        var gb_x_end = random(640)
        var gb_y_end = 410
        var gb_angle = (point_direction(gb_x_end, gb_y_end, battle_soul.x, battle_soul.y) + 90)
        crgb(gb_x_start, 540, gb_x_end, gb_y_end, 40, bssp179, bssp24, bssp25, 120, 1, 1, 0, 0, gb_angle, 30, gb)
    }
	if tl1=700
	{
	  scr_blackscreen(20)
	  but15_1.xt=3
	  xt=3
	}
}
if xt=3
	{
		tl1++
  if tl1=800{
    instance_create_depth(320,-30,0,but15_9)
    Battle_SetSoul(battle_soul_red)
  }
  if tl1=850{
    instance_create_depth(320,-30,0,but15_9)
  }
  if tl1=900{
    instance_create_depth(320,-30,0,but15_9)
  }
  if tl1=950{
    instance_create_depth(320,-30,0,but15_9)
  }
  if tl1=1000{
    instance_create_depth(320,-30,0,but15_9)
  }
  if tl1=1050{
    instance_create_depth(320,-30,0,but15_9)
  }
  if tl1=1100
	{
	  scr_blackscreen(20)
	  but15_1.xt=2
	  xt=4
	  tl1=670
	}	}
	if xt=4{
		tl1++
	if (tl1 == 700 && instance_exists(battle_soul))
    {
        Battle_SetSoul(battle_soul_blue)
        c = instance_create_depth(-36, -20, 0,gb)
        c.xto = 140
        c.yto = 315
        c.tuse = 20
        c.anto = 90
        c.sprite_index = bssp179
		c.spr=bssp24
		c.spr2=bssp25
        c.image_xscale = 0.5
        c.xsca = 1.5
        c.alarm[0] = 20
    }
    if (tl1 == 700 && instance_exists(battle_soul))
    {
        c = instance_create_depth(-36, -20, 0,gb)
        c.xto = 140
        c.yto = 260
        c.tuse = 20
        c.anto = 90
        c.sprite_index = bssp179
		c.spr=bssp24
		c.spr2=bssp25
        c.image_xscale = 0.5
        c.xsca = 1.5
        c.alarm[0] = 20
    }
    if (tl1 == 750 && instance_exists(battle_soul))
    {
        c = instance_create_depth(-36, -20, 0,gb)
        c.xto = 140
        c.yto = 370
        c.tuse = 20
        c.anto = 90
        c.sprite_index = bssp179
		c.spr=bssp24
		c.spr2=bssp25
        c.image_xscale = 0.5
        c.xsca = 1.5
        c.alarm[0] = 20
    }
    if (tl1 == 750 && instance_exists(battle_soul))
    {
        c = instance_create_depth(-36, -20, 0,gb)
        c.xto = 140
        c.yto = 370
        c.tuse = 20
        c.anto = 90
        c.sprite_index = bssp179
		c.spr=bssp24
		c.spr2=bssp25
        c.image_xscale = 0.5
        c.xsca = 1.5
        c.alarm[0] = 20
        Battle_SetSoul(battle_soul_red)
    }
    if (tl1 >= 770 && tl1 < 780)
    {
        c.y -= 7
        c.yto -= 7
        c.image_xscale += 0.05
        c.xsca += 0.1
    }
    if (tl1 == 780 && instance_exists(battle_soul))
    {
        c = instance_create_depth(70, -20, 0,but15_11)
        c.xto = 70
        c.yto = 307
        c.tuse = 20
        c.anto = 90
        c.bl233 = 200
        c.sprite_index = bssp181
        c.spr = bssp184
        c.spr2 = bssp185
        c.image_xscale = 2
        c.image_yscale = 2
        c.xsca = 4.5
        c.alarm[0] = 30
        c = instance_create_depth(70, 660, 0,but15_13)
        c.xto = 570
        c.yto = 307
        c.tuse = 20
        c.anto = 270
        c.sprite_index = bssp180
        c.image_xscale = 2
        c.image_yscale = 2
        c.alarm[0] = 30
    }
    if (tl1 == 800)
        instance_create_depth(320, -30, 0,but15_12)
    if (tl1 == 825)
        instance_create_depth(320, -30, 0,but15_12)
    if (tl1 == 840 && instance_exists(battle_soul))
    {
        c = instance_create_depth(70, -20, 0,gb2)
        c.xto = 570
        c.yto = 357
        c.tuse = 20
        c.anto = 270
        c.sprite_index = bssp180
        c.image_xscale = 0.5
        c.image_yscale = 1
		c.spr = bssp182
        c.spr2 = bssp183
        c.xsca = 0.5
        c.alarm[0] = 30
        Battle_SetSoul(battle_soul_red)
    }
    if (tl1 == 850)
        instance_create_depth(320, -30, 0,but15_12)
    if (tl1 == 860)
        instance_create_depth(-100, -100, 0,but15_14)
    if (tl1 == 875)
        instance_create_depth(320, -30, 0,but15_12)
    if (tl1 == 900)
        instance_create_depth(320, -30, 0,but15_12)
    if (tl1 >= 1020 && (tl1 % 10) == 0 && tl1 <= 1050 && instance_exists(battle_soul))
    {
        c = instance_create_depth(70, -20, 0,gb)
        c.xto = (170 + ((tl1 - 1020) * 6))
        c.yto = 50
        c.tuse = 20
        c.sprite_index = bssp179
		c.spr=bssp24
		c.spr2=bssp25
        c.image_xscale = 0.5
        c.image_yscale = 1
        c.xsca = 0.5
        c.alarm[0] = 30
        Battle_SetSoul(battle_soul_red)
    }
    if (tl1 >= 1060 && (tl1 % 10) == 0 && tl1 <= 1100 && instance_exists(battle_soul))
    {
        c = instance_create_depth(570, 500, 0,gb)
        c.xto = (470 - ((tl1 - 1060) * 6))
        c.yto = 430
        c.tuse = 20
        c.anto = 180
        c.sprite_index = bssp179
		c.spr=bssp24
		c.spr2=bssp25
        c.image_xscale = 0.5
        c.image_yscale = 1
        c.xsca = 0.5
        c.alarm[0] = 30
        Battle_SetSoul(battle_soul_red)
    }
	if tl1=1150
	{
		Battle_SetSoul(battle_soul_red)
		scr_blackscreen(20)
		instance_create_depth(0,0,0,but156)
		instance_destroy(but15_1)
		instance_destroy(but15_15)
		instance_destroy()
	}
	}
