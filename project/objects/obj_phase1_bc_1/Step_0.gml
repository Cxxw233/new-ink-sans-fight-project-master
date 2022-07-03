time += 1
if (time >= 105)
{
    battle_turn_8.time = 0
    battle_turn_8.to_end += 1
    instance_destroy(obj_phase1_bc_1_bone_aqua)
    instance_destroy(obj_phase1_bc_1_bone_orange)
	camera.angle=0
    instance_destroy()
}

 