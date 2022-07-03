time++
if time=1{
(instance_create_depth(320,280,0,obj_phase2_7_board)).image_angle=0
    battle_soul.x = 280
    battle_soul.y = 205
	Battle_SetSoul(battle_soul_red)
    instance_create_depth(battle_soul.x, battle_soul.y, 0, battle_soul_red_half)
    battle_soul.sprite_index = bssp49
	instance_create_depth(520,battle_enemy_inkp1.yj,0,but10d5_1)
}
if time=10
{
	battle_soul.x = 280
    battle_soul.y = 205
}
if time>2&&time<=36{
battle_enemy_inkp1.xj-=5
but10d5_1.xj+=5}
if time%280=0
{
	    var gb_x_start = choose(random_range(-300, -100), random_range(740, 1040))
        var gb_y_start = random_range(-200, -100)
        var gb_x_end = random(640)
        var gb_y_end = random(480)
        var gb_angle = (point_direction(gb_x_end, gb_y_end, battle_soul_red.x, battle_soul_red_half.y) + 90)
        crgb(gb_x_start, gb_y_start, gb_x_end, gb_y_end, 40, bssp10d5a4, bssp24, bssp25, 120, 1, 1, 0, 0, gb_angle, 30, gb)
}
if time%80=0
{
    var ins = crgb(282, -20, 282, 65, 0, bssp7, bssp8, bssp9, 30, 1, 1,1.5, 1.5, 0, 0, gb3)
    ins.image_blend = c_orange
    ins = crgb(362, -20, 362, 65, 0, bssp7, bssp8, bssp9, 30, 1, 1, 1.5,1.5, 0, 0, gb3)
    ins.image_blend = c_orange
}
if time%60=0
{
	instance_create_depth(176,480,0,obj_phase2_8_bone_1)
	instance_create_depth(334,480,0,obj_phase2_8_bone_2)
}
if time>666&&time<=700{
battle_enemy_inkp1.xj+=5
but10d5_1.xj-=5}
if time=700
{
	instance_destroy(but10d5_1)
	instance_destroy(obj_phase2_8_bone_1)
	instance_destroy(obj_phase2_8_bone_2)
	instance_destroy(obj_phase2_7_board)
	Battle_SetSoul(battle_soul_red)
	battle_soul_red.sprite_index = spr_battle_soul_red
	instance_destroy(battle_soul_red_half)
	Battle_EndTurn()
}