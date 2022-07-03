if xt=0
tl1++
if xt=1
bl1++
if (tl1 == 40)
{
    instance_create_depth(60, 100, 0,but156_2)
    instance_create_depth(580, 100, 0,but156_2)
	instance_create_depth(-999, -999, 0,obj_espegb)
}
if tl1=450
{
	but156_1.soul=1
	scr_blackscreen(20)
	Battle_SetSoul(battle_soul)
	instance_create_depth(battle_board.x, battle_board.y, 0,but156_3)
	    with (battle_board){
        alpha=0
        alpha_bg=0
        alpha_frame=0}
}
if tl1>600&&tl1<=800&&tl1%40=0
scr_Xbone(battle_soul_blue.x+irandom_range(-50,50),irandom_range(-10,-30),irandom_range(0,360),irandom_range(160,180))
if tl1>600&&tl1<=1000&&tl1%80=0
scr_Lbone(384,battle_soul_red.y+irandom_range(-10,10),32,1.3)
if tl1=1001{
xt=1}
if xt=1
{
if (frac((bl1 / irandom_range(4,10))) == 0)
    {
        crgb((320 + lengthdir_x(640, ((bl1 * 2.5) + 90))), (120 + lengthdir_y(640, ((bl1 * 2.5) + 90))), (320 + lengthdir_x(128, ((bl1 * 2.5) + 90))), (120 + lengthdir_y(128, ((bl1 * 2.5) + 90))), 30, bssp51, bssp24, bssp25, 42, 0.5, 0.5, 0, 0, ((bl1 * 2.5) - (floor(((bl1 * 2.5) / 360)) * 360)), (((bl1 * 2.5) - (floor(((bl1 * 2.5) / 360)) * 360)) + 90), gb_fast)
    }
	if bl1=400
	xt=0
}
if tl1=1010 or tl1=1110 or tl1=1210 or tl1=1310 or tl1=1410 or tl1=1510 or tl1=1610 or tl1=1710
{
	repeat (2)
        {
            var gb_x = random_range(44, 606)
            var gb_y = random_range(144, 244)
            var angle = random(360)
            var i = 0
            if (i <= 7)
            {
                crgb(random(640), -100, gb_x, gb_y, 40, bssp51, bssp24, bssp25, 80, 0.5, 0.5, 0, 0, ((0 + (i * 45)) + angle), ((0 + (i * 45)) + angle), gb)
                for (i++; i <= 7; i++)
                    crgb(random(640), -100, gb_x, gb_y, 40, bssp51, bssp24, bssp25, 80, 0.5, 0.5, 0, 0, ((0 + (i * 45)) + angle), ((0 + (i * 45)) + angle), gb)
            }
			crgb(random(640), -100,320, 310, 40, bssp51, bssp24, bssp25, 60, 0.5, 0.5, 0, 0, 45, 45, gb)
            crgb(random(640), -100,320, 310, 40, bssp51, bssp24, bssp25, 60, 0.5, 0.5, 0, 0, 135, 135, gb)
			crgb(random(640), -100,320, 310, 40, bssp51, bssp24, bssp25, 60, 0.5, 0.5, 0, 0, 225, 225, gb)
            crgb(random(640), -100,320, 310, 40, bssp51, bssp24, bssp25, 60, 0.5, 0.5, 0, 0, 315, 315, gb)
        }
}
if tl1=1810 or tl1=1910 or tl1=2010
{    
	with (instance_create_depth(60, 100, 0,but156_9))
    {
        image_angle = (point_direction(x, y, battle_soul_red.x, battle_soul_red.y) + 90)
        alarm[0] = 20
    }
    with (instance_create_depth(580, 100, 0,but156_10))
    {
        image_angle = (point_direction(x, y, battle_soul_blue.x, battle_soul_blue.y) + 90)
        alarm[0] = 20
    }
}
if tl1=2077{
crgb(random(640), -100,battle_soul_blue.x, 260, 40, bssp51, bssp24, bssp25, 60, 3, 3, 0, 0, 0, 0, gb)
crgb(random(640), -100,battle_soul_red.x, 260, 40, bssp51, bssp24, bssp25, 60, 3, 3, 0, 0, 0, 0, gb)
battle_enemy_inkp1.nowhppl=999
}
if tl1=2130    {
scr_blackscreen(100)
Battle_SetBoardSize(65,65,283,283,1)
instance_create_depth(0,0,0,but19)
instance_create_depth(0,0,0,boss1)
instance_destroy(but156_1)
instance_destroy(but156_2)
instance_destroy(but156_4)
instance_destroy(but156_5)
instance_destroy(battle_soul_blue)
battle_soul.x=320
battle_soul.y=310
	    with (battle_board){
        alpha=1
        alpha_bg=1
        alpha_frame=1}
instance_destroy()
}
