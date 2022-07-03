time += 1
if (time == 105)
{
    battle_turn_8.time = 0
    battle_turn_8.to_end += 1
    battle_enemy_inkp1.pen = 1
    instance_destroy(obj_phase1_bc_5_pen)
    instance_destroy(obj_phase1_bc_5_pen_fake)
	camera.angle=0
    instance_destroy()
}

 