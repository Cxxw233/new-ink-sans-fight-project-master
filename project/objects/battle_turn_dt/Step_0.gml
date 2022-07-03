time++
if time<540
battle_soul.x=320
if time=1
{
	Battle_SetSoul(battle_soul_blue)
    battle_soul_blue.dir = 180
	instance_create_depth(0,0,0,obj_phase2_7_rgb)
	instance_create_depth(10,-18,0,obj_phase2_7_light_1)
	instance_create_depth(60,-18,0,obj_phase2_7_light_2)
}
if time=20{
crgb(-20, 408, 80, 408, 15, bssp7, bssp8, bssp9, 30, 1, 1, 5, 5, 90, 90, gb)
}
if time=55
{
battle_enemy_inkp1.maxhppl=48
battle_enemy_inkp1.nowhppl=48
battle_enemy_inkp1.nowkr=0
}
if time=100
{
	instance_create_depth(640,250,0,obj_phase2_7_bone_1)
}
if time=220
{
	instance_create_depth(640,248,0,obj_phase2_7_bone_2)
}
if time=550
{
	scr_blackscreen(10)
	battle_enemy_inkp1.maxhppl=48
    battle_enemy_inkp1.nowhppl=48
    battle_enemy_inkp1.nowkr=0
	var playerx=battle_soul.x
    var playery=battle_soul.y
    var playerd=battle_soul.depth
    instance_create_depth(playerx,playery,playerd,battle_soul_red)
    instance_destroy(battle_soul_blue)
	Battle_SetBoardSize(75,65,72.5,72.5,0);
}
if time=580
{   
	instance_create_depth(320,310,0,obj_phase2_7_bone_3)
	//(instance_create_depth(320,310,0,obj_phase2_7_board)).xt=1
}
if time>600&&time<1000&&time%85=0
{
	crgb(battle_soul.x, -20, battle_soul.x, 120, 15, bssp7, bssp8, bssp9, 30, 1, 1, 1 ,1 , 0, 0, gb)
}
if time=1000
{  
	obj_phase2_7_light_1.ed=1
	obj_phase2_7_light_2.ed=1
	instance_destroy(obj_phase2_7_bone_1)
	instance_destroy(obj_phase2_7_bone_2)
	instance_destroy(obj_phase2_7_bone_3)
	instance_destroy(obj_phase2_7_rgb)
}
if time=1030
{
	battle_enemy_inkp1.maxhppl=99
	Battle_EndTurn()
}