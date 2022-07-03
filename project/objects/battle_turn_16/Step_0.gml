time += 1
if time>1&&time<=30
battle_enemy_inkp1.xj-=4
if time=1{
	instance_create_depth(0,0,battle_enemy_inkp1.depth+1,but185_1)
Battle_SetSoul(battle_soul_orange)
}
    var cxk = 0
    if (time >= 50 && (time % 60) == 0 && time < 700 && instance_exists(battle_soul))
    {
        var cxg = choose(irandom_range(50, 220), irandom_range(420, 590))
        crgb(320, -20, cxg, 120, 15, bssp384, bssp24, bssp25, 40, 1, 1, -1, -1, (point_direction(cxg, 120, battle_soul.x, battle_soul.y) + 90), 0, gb)
    }
    if (time == 700 && instance_exists(battle_soul))
    {
        cxg = random_range(-30, 30)
        repeat (12)
        {
            cxk++
            crgb(((room_width / 2) + lengthdir_x(380, (cxk * 30))), ((room_height / 2) + lengthdir_y(380, (cxk * 30))), (((room_width / 2) + lengthdir_x(80, (cxk * 30))) + cxg), ((((room_height / 2) + lengthdir_y(80, (cxk * 30))) + cxg) + 30), 30, bssp384, bssp24, bssp25, 30, 1, 2, -1, 0, ((cxk * 30) + 45), 0, gb)
        }
    }
if time>10&&time<=800&&time%60=0
instance_create_depth(irandom_range(650,680),irandom_range(280,360),0,choose(obj_phase2_5_bone_1,obj_phase2_5_bone_2,obj_phase2_5_bone_3,obj_phase2_5_bone_4,obj_phase2_5_bone_5))
if time>770&&time<=800
battle_enemy_inkp1.xj+=4
if time=800
{
	instance_destroy(but185_1)
	instance_destroy(obj_phase2_5_bone_1)
	instance_destroy(obj_phase2_5_bone_2)
	instance_destroy(obj_phase2_5_bone_3)
    instance_destroy(obj_phase2_5_bone_4)
	instance_destroy(obj_phase2_5_bone_5)
	Battle_EndTurn()
}