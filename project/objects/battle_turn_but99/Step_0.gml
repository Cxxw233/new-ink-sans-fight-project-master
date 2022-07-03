    if (xt == 12)
    {
        crtalk1(380, 74, "It's not easy for/you to come here, kid.",1)
        scr_touxt()
        xt++
    }
    if (xt == 15)
    {
        crtalk1(380, 74, "After fighting with/them,seems your/determination goter.",1)
        xt++
    }
    if (xt == 17)
    {
        crtalk1(380, 74, "Your heart has broken/many times, but it/doesn't seem to/disappear.",1)
        xt++
    }
    if (xt == 19)
    {
        crtalk1(380, 74, "Your journey is/coming to an end now.",1)
        xt++
    }
    if (xt == 21)
    {
        crtalk1(380, 74, "You got lost and/I tried to pull you/back.",1)
        xt++
    }
    if (xt == 23)
    {
        crtalk1(380, 74, "But now, just burn/in hell.",1)
        scr_touxt()
        xt++
    }
	if (xt == 13)
	{
	if (!audio_is_playing(inkbgmp5))
    global.bgm=audio_play_sound(inkbgmp5, 100, true)
	xt++
	}
	if (xt == 25)
	{
		a++
	
	if a=1
	{
		instance_create_depth(0,0,0,star_3)
		instance_create_depth(0,0,0,star)
	}
    if (a == 225)
    {
        mg1 = instance_create_depth(220, 210, 0,but99_2)
        mg1.image_xscale = -2
        mg1.image_yscale = 2
        mg1.image_alpha = 0
        mg2 = instance_create_depth(420, 170, 0,but99_2)
        mg2.image_xscale = 2
        mg2.image_yscale = 2
        mg2.image_alpha = 0
    }
    if (a >= 225 && a < 245)
    {
        mg1.image_alpha += 0.05
        mg2.image_alpha += 0.05
    }
    if (a == 265)
    {
        mg1.image_index = 1
        mg2.image_index = 1
    }
    if (a >= 265 && a < 275)
    {
        ax1[(a - 265)] = instance_create_depth((mg1.x + 10), (mg1.y - 5), -80, but99_3)
        mg1.x += 20
        ax1[(a - 265)].sprite_index = bssp9903
        ax1[(a - 265)].image_angle = 90
        ax1[(a - 265)].c = 2
        ax2[(a - 265)] = instance_create_depth((mg2.x - 10), (mg2.y - 5), -80, but99_3)
        mg2.x -= 20
        ax2[(a - 265)].sprite_index = bssp9903
        ax2[(a - 265)].image_angle = -90
        ax2[(a - 265)].c = 2
    }
    if (a == 275)
    {
        mg1.ed = 1
        mg1.hspeed = 20
        mg2.ed = 1
        mg2.hspeed = -20
    }
    if (a >= 292 && a < 297)
        ax1[(((a - 265) - 27) * 2)].st = 1
    if (a >= 297 && a < 302)
        ax2[(((a - 265) - 32) * 2)].st = 1
    if (a >= 332 && a < 337)
        ax1[((10 - (((a - 265) - 67) * 2)) - 1)].st = 1
    if (a >= 337 && a < 342)
        ax2[((10 - (((a - 265) - 72) * 2)) - 1)].st = 1
    if (a >= 345 && a < 375 && (a % 3) == 0)
    {
        with (instance_create_depth(0, 0, 0,but99_4))
        {
            image_angle = (90 - ((other.a - 345) * 3))
            alarm[0] = 20
        }
        with (instance_create_depth(640, 480, 0,but99_4))
        {
            image_angle = (270 - ((other.a - 345) * 3))
            alarm[0] = 20
        }
    }
    if (a >= 395 && a < 425 && (a % 3) == 0)
    {
        with (instance_create_depth(640, 0, 0,but99_4))
        {
            image_angle = (0 - ((other.a - 395) * 3))
            alarm[0] = 20
        }
        with (instance_create_depth(0, 480, 0,but99_4))
        {
            image_angle = (180 - ((other.a - 395) * 3))
            alarm[0] = 20
        }
    }
    if (a >= 420 && a < 450 && (a % 3) == 0)
    {
        with (instance_create_depth(0, 0, 0,but99_4))
        {
            image_angle = (0 + ((other.a - 420) * 3))
            alarm[0] = 20
        }
        with (instance_create_depth(640, 480, 0,but99_4))
        {
            image_angle = (180 + ((other.a - 420) * 3))
            alarm[0] = 20
        }
    }
    if (a >= 445 && a < 475 && (a % 3) == 0)
    {
        with (instance_create_depth(640, 0, 0,but99_4))
        {
            image_angle = (-90 + ((other.a - 445) * 3))
            alarm[0] = 20
        }
        with (instance_create_depth(0, 480, 0,but99_4))
        {
            image_angle = (90 + ((other.a - 445) * 3))
            alarm[0] = 20
        }
    }
    if (a >= 530 && a <= 764 && (a % 2) == 0){
        (instance_create_depth(choose(irandom(220), (640 - irandom(220))), -40, 0,but99_5)).vspeed = 5}
    if (a >= 510 && a <= 764 && (((a - 530) + 20) % 120) == 0)
        crgb(battle_soul.x, -40, battle_soul.x, 160, 20, bssp199x, bssp200x, bssp201x, 30, 1, 1, 0, 0, 0, 0, gb)
    if (a >= 540 && a <= 764 && (((a - 530) - 10) % 120) == 0)
        crgb(-40, battle_soul.x, 170, battle_soul.x, 20, bssp199x, bssp200x, bssp201x, 30, 1, 1, 0, 0, 90, 90, gb)
    if (a >= 570 && a <= 764 && (((a - 530) - 40) % 120) == 0)
        crgb(battle_soul.x, 520, battle_soul.x, 460, 20, bssp199x, bssp200x, bssp201x, 30, 1, 1, 0, 0, 180, 180, gb)
    if (a >= 600 && a <= 764 && (((a - 530) - 70) % 120) == 0)
        crgb(680, battle_soul.x, 470, battle_soul.x, 20, bssp199x, bssp200x, bssp201x, 30, 1, 1, 0, 0, 270, 270, gb)
    if (a == 774)
    {
        with (but99_5)
        {
            gravity = ((-(sign((320 - x)))) * 0.2)
            gravity_direction = 0
        }
    }
    if (a >= 794 && a <= 1039 && (a % 2) == 0){
        (instance_create_depth(choose(irandom(220), (640 - irandom(220))), 520, 0,but99_5)).vspeed = -5}
    if (a == 794)
        instance_create_depth(310, -100, 0,but99_6)
    if (a == 814)
        instance_create_depth(310, -100, 0,but99_7)
    if (a == 834)
        instance_create_depth(310, -100, 0,but99_6)
    if (a == 874)
        instance_create_depth(310, -100, 0,choose(but99_6, but99_7))
    if (a > 874 && a <= 954 && ((a - 794) % 40) == 0)
        instance_create_depth(320, -100, 0,choose(but99_6, but99_7))
    if (a == 894)
        instance_create_depth(310, -100, 0,but99_6)
    if (a == 974)
        instance_create_depth(310, -100, 0,but99_7)
    if (a == 1039)
    {
        with (but99_5)
        {
            gravity = ((-(sign((320 - x)))) * 0.2)
            gravity_direction = 0
        }
    }
    if (a >= 1059 && a <= 1172 && (a % 2) == 0)
    {
        if (irandom(4) < 3)
        {
            if irandom(1){
                (instance_create_depth(-40, irandom(210), 0,but99_5)).hspeed = 5}
            else{
                (instance_create_depth(680, irandom(210), 0,but99_5)).hspeed = -5}
        }
        else if irandom(1){
            (instance_create_depth(-40, (410 + irandom(70)), 0,but99_5)).hspeed = 5}
        else{
            (instance_create_depth(680, (410 + irandom(70)), 0,but99_5)).hspeed = -5}
    }
    if (a = 1059)
    {
		Battle_SetBoardSize(75,65,283,283,20)
    }
    if (a == 1059)
        Battle_SetSoul(battle_soul_blue)
    if (a >= 1082 && (a % 10) == 0 && a < 1122)
    {
        with (instance_create_depth(20, (230 + (((a - 1059) - 23) * 4)), 0,but99_8))
        {
            tm = 5
            bg = 1
            mtg = instance_create_depth(x, y, 0,but99_4)
            mtg.image_alpha = 0
			mtg.xt=1
        }
        with (instance_create_depth(620, (390 - (((a - 1059) - 23) * 4)), 0,but99_8))
        {
            tm = 5
            bg = 1
            mtg = instance_create_depth(x, y, 0,but99_4)
            mtg.image_alpha = 0
			mtg.xt=1
        }
    }
    if (a >= 1122 && (a % 10) == 0 && a < 1162)
    {
        with (instance_create_depth(20, (390 - (((a - 1059) - 63) * 4)), 0,but99_8))
        {
            tm = 5
            bg = 1
            mtg = instance_create_depth(x, y, 0,but99_4)
            mtg.image_alpha = 0
			mtg.xt=1
        }
        with (instance_create_depth(620, (230 + (((a - 1059) - 63) * 4)), 0,but99_8))
        {
            tm = 5
            bg = 1
            mtg = instance_create_depth(x, y, 0,but99_4)
            mtg.image_alpha = 0
			mtg.xt=1
        }
    }
    if (a >= 1172 && a <= 1304 && (a % 2) == 0)
    {
        if (irandom(4) >= 3)
        {
            if irandom(1){
                (instance_create_depth(-40, (410 + irandom(70)), 0,but99_5)).hspeed = 5}
            else{
                (instance_create_depth(680, (410 + irandom(70)), 0,but99_5)).hspeed = -5}
        }
    }
    if (a >= 1172 && ((a - 1) % 40) == 0 && a <= 1288)
    {
        cx = choose(-1, 1)
        cy = irandom_range(240, 400)
        crgb((320 + (cx * 360)), cy, (320 + (cx * 300)), cy, 20, bssp199x, bssp200x,bssp201x, 30, 1, 1, 0, 0, ((-cx) * 90), ((-cx) * 90), gb)
    }
	}
	if a=1350{
	scr_blackscreen(20)
	battle_enemy_inkp1.xj=-130
	battle_soul.x=320
	battle_soul.y=310
	audio_stop_all()
	global.bgm=audio_play_sound(inkbgmp5_1, 100, true)
	audio_sound_pitch(global.bgm, sd)
	Battle_SetSoul(battle_soul_red)
	instance_create_depth(0,0,0,but99_0)
	Battle_SetBoardSize(75,65,72.5,72.5,1)
	xt=1
	a=5599
	}
	if xt=1{
		a++
	if (a > 5600 && (a % 40) == 0 && a <= 5720)
{
    repeat (3)
    {
        c = instance_create_depth(450, (310 + (irandom_range(-2, 2) * 25)), 0,but99_25)
        c.image_angle = 180
        c.speed = 3
        c.direction = 0
        c.gravity = 0.2
        c.gravity_direction = 180
    }
}
if (a > 5720 && (a % 40) == 0 && a <= 5840)
{
    repeat (3)
    {
        c = instance_create_depth(190, (310 + irandom_range(-69, 69)), 0,but99_25)
        c.image_angle = 0
        c.speed = 3
        c.direction = 180
        c.gravity = 0.2
        c.gravity_direction = 0
    }
}
if (a > 5840 && (a % 10) == 0 && a <= 6150)
{
    ag = irandom(359)
    c = instance_create_depth((320 + lengthdir_x(130, ag)), (310 + lengthdir_y(130, ag)), 0,but99_25)
    c.image_angle = (ag + 180)
    c.speed = 3
    c.direction = ag
    c.gravity = 0.2
    c.gravity_direction = (ag + 180)
	}
	if a =6200
	xt=3
	}
	if xt=3{
		a++
		bl4++
		
		if a=6201{
		instance_destroy(but99_25)
		scr_blackscreen(20)
		sd=0.6
		Battle_SetSoul(battle_soul_red_fast)
		audio_sound_pitch(global.bgm, sd)
		but99_0.xt=2
		}
    if (frac((bl4 / 4)) == 0)
    {
        mk = instance_create_depth((320 + lengthdir_x(640, ((bl4 * 2.5) + 90))), (320 + lengthdir_y(640, ((bl4 * 2.5) + 90))), 0,gb_fast)
        mk.image_angle = (((bl4 * 2.5) - (floor(((bl4 * 2.5) / 360)) * 360)) + 90)
        mk.xto = (320 + lengthdir_x(128, ((bl4 * 2.5) + 90)))
        mk.yto = (320 + lengthdir_y(128, ((bl4 * 2.5) + 90)))
        mk.tuse = 30
        mk.anto = ((bl4 * 2.5) - (floor(((bl4 * 2.5) / 360)) * 360))
        mk.sprite_index = bssp9913
        mk.image_xscale = 0.5
        mk.xsca = 0.5
        mk.spr = bssp24
        mk.spr2 = bssp25
        mk.alarm[0] = 61
        mk = instance_create_depth((320 + lengthdir_x(640, ((bl4 * 2.5) + 180))), (320 + lengthdir_y(640, ((bl4 * 2.5) + 180))), 0,gb_fast)
        mk.image_angle = (((bl4 * 2.5) - (floor(((bl4 * 2.5) / 360)) * 360)) + 180)
        mk.xto = (320 + lengthdir_x(128, ((bl4 * 2.5) + 180)))
        mk.yto = (320 + lengthdir_y(128, ((bl4 * 2.5) + 180)))
        mk.tuse = 30
        mk.anto = (((bl4 * 2.5) - (floor(((bl4 * 2.5) / 360)) * 360)) + 90)
        mk.sprite_index = bssp9913
        mk.image_xscale = 0.5
        mk.xsca = 0.5
        mk.spr = bssp24
        mk.spr2 = bssp25
        mk.alarm[0] = 61
		mk.depth=-99999999999999999999999999999
    }
    if (bl4 == 181){
        xt = 4
		bl4=999999
		a=70750
		}
	}
		if xt=4
		{
			a++
			if a=70880{
			scr_blackscreen(20)
		sd=0.4
		Battle_SetSoul(battle_soul_red)
		audio_sound_pitch(global.bgm, sd)
		//instance_create_depth(0,0,0,but99_1)
		but99_0.xt=3
			}
			if a=71250{
				but99_0.dark2=1
				but99_0.dark1=1
			}
			if a>71260&&a%70=0&&a<71800
			{
			var gb_x_start = choose(random_range(-300, -100), random_range(740, 1040))
            var gb_y_start = random_range(-200, -100)
            var gb_x_end = random(640)
            var gb_y_end = random(480)
            var gb_angle = (point_direction(gb_x_end, gb_y_end, battle_soul.x, battle_soul.y) + 90)
            crgb(gb_x_start, gb_y_start, gb_x_end, gb_y_end, 40, bssp23, bssp24, bssp25, 120, 1, 1, 0, 0, gb_angle, 30, gb)
			
			}
			if a>71260&&a%60=0&&a<71800
			{
				instance_create_depth(irandom_range(-10,650),-150,0,but99_9)
			}
			if a>71260&&a%20=0&&a<71800
			{
				instance_create_depth(irandom_range(-10,650),irandom_range(-35,-150),0,but99_10)
				instance_create_depth(battle_soul.x,irandom_range(-35,-150),0,but99_10)
			}
			if a=72000
			{
			instance_destroy(but99_10)
			instance_destroy(but99_9)
			scr_blackscreen(20)
		    sd=0.1
			but99_0.dark2=2
		    but99_0.dark1=2
			but99_0.xjj+=140
			but99_0.image_alpha=0.6
			but99_0.c=-1
		    audio_sound_pitch(global.bgm, sd)
			}
			if a=72100
			{
				instance_create_depth(battle_enemy_inkp1.x+60, battle_enemy_inkp1.y-60, 0, but99_11)
			}
			if a=72300
			{
				audio_stop_sound(inkbgmp5_1)
				scr_blackscreen(100)
				audio_play_sound(snd_back,100,false)
				instance_destroy(but99_0)
				instance_destroy(but99_11)
				instance_destroy(star_3)
				instance_destroy(star)
				battle_enemy_inkp1.time=0
				battle_enemy_inkp1.boss1xt=1
				battle_enemy_inkp1.xj=0
				battle_enemy_inkp1.yj=0
				battle_enemy_inkp1.touxtt=bssp1old
				battle_enemy_inkp1.shenxt=bssp2
				battle_enemy_inkp1.touxts=0
			}
			if a=72400
			{
				global.bgm=audio_play_sound(inkbgmoldp1, 100, true)
				sd=1
				audio_sound_pitch(global.bgm, sd)
				instance_create_depth(0,0,0,but99a1)
			}
		}
