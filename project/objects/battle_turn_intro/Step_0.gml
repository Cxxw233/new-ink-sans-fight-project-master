if (xt == 0)
{
    battle_enemy_inkp1.xj -= 30
    scr_blackscreen(10)
    xt += 1
    alarm[0] = 20
}
if (xt == 2)
{
    battle_enemy_inkp1.xj -= 30
    scr_blackscreen(10)
    xt += 1
    alarm[0] = 20
}
if (xt == 4)
{
    battle_enemy_inkp1.xj -= 30
    scr_blackscreen(10)
    xt += 1
    alarm[0] = 20
}
if (xt == 6)
{
    battle_enemy_inkp1.xj -= 30
    scr_blackscreen(10)
    xt += 1
    alarm[0] = 20
}
if (xt == 8)
{
    instance_create_depth(0, 0, 0, obj_phase2_1_sans)
    xt += 1
}
if (xt == 9)
{
if a=0{
  a=1
}
if a=1 t1+=1
if t1=50 {a=2;t1=0}
if a=2{
  if frac(t2/16)=0{crgb(320-bl1*54,-20,320-bl1*54,236,20,bssp23,bssp24,bssp25,30,0.5,1,0,0,0,0,gb);crgb(320+bl1*54,-20,320+bl1*54,236,20,bssp23,bssp24,bssp25,30,0.5,1,0,0,0,0,gb);bl1+=1}
  t2+=1
  if t2=144 {tl2=0;a=3;bl1=0}
  if t2=17 instance_create_depth(0+5,0+15,0,obj_phase2_1)
}
if a=4 {vd=22;a=5}
if a=5{
  if frac(tl2/16)=0{crgb(320-6*54+bl1*40,-20,320-6*54+bl1*40,236,20,bssp23,bssp24,bssp25,30,0.5,1,0,0,0,0,gb);crgb(320+6*54-bl1*40,-20,320+6*54-bl1*40,236,20,bssp23,bssp23,bssp25,30,0.5,1,0,0,0,0,gb);bl1+=1}
  tl2+=1
  if tl2=240 a=5.5
}
if a=6 { a=7 d=instance_create_depth(0,250,0,gb)
    d.image_angle=90
    d.anto=90
    d.xto=100
    d.yto=250
    d.tuse=20
    d.sprite_index=bssp23
    d.alarm[0]=10
    d.image_xscale=0.5
    d.xsca=1
	d.spr = bssp24
    d.spr2 = bssp25
    
    d=instance_create_depth(640,320,0,gb)
    d.image_angle=-90
    d.anto=-90
    d.xto=540
    d.yto=390
    d.tuse=20
    d.sprite_index=bssp23
    d.alarm[0]=10
    d.image_xscale=0.5
    d.xsca=1
	d.spr = bssp24
    d.spr2 = bssp25
    }
if a=7 
{mi+=1;
	if mi=55 
	a=8
}
if a=9{
	 scr_blackscreen(10)battle_enemy_inkp1.xj+=120 instance_destroy(obj_phase2_1_sans) Battle_EndTurn()}
}
 