time += 1
battle_board.y-=0.4
if (frac((time / 1)) == 0)
    instance_create_depth(irandom_range(0, 640), -100, -6, obj_phase1_bc_2_star)
if (time >= 180)
{
	battle_board.y=320
    battle_turn_8.time = 0
    battle_turn_8.to_end += 1
    battle_enemy_inkp1.xj = 0
    battle_enemy_inkp1.yj = 0
	camera.angle=0
    instance_destroy(obj_phase1_bc_2_star)
    instance_destroy()
}

 