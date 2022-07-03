time++
if time=1{
instance_create_depth(320,158,battle_enemy_inkp1.depth+1,but5_1_1)
Battle_SetSoul(battle_soul_red)
instance_create_depth(320,310,0,obj_phase2_3_board)
battle_soul.y=260
}
if time>1&&time<=30
battle_enemy_inkp1.xj-=4
if time=30{
instance_create_depth(320,310,0,obj_phase2_3_aqua)
}
if time=30{
(instance_create_depth(320,310,0,obj_phase2_3_aqua)).image_angle=90
}
  if (frac((time / 60)) == 0)
    {
        crgb((320 + lengthdir_x(640, ((time * 2.5) + 90))), (320 + lengthdir_y(640, ((time * 2.5) + 90))), (320 + lengthdir_x(128, ((time * 2.5) + 90))), (320 + lengthdir_y(128, ((time * 2.5)+ 90))), 30, bssp7, bssp8, bssp9, 42, 0.5, 0.5, 0, 0, ((time * 2.5) -(floor(((time * 2.5) / 360)) * 360)), (((time * 2.5) - (floor(((time * 2.5) / 360)) * 360)) + 90), gb)
    }
if time>500&&time<=530
battle_enemy_inkp1.xj+=4
if time=530
{
	instance_destroy(but5_1_1)
	instance_destroy(obj_phase2_3_board)
	instance_destroy(obj_phase2_3_aqua)
	Battle_EndTurn()
}