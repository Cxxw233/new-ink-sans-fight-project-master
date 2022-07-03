time += 1
if (time >= 68)
{
    battle_turn_8.time = 0
    battle_turn_8.to_end += 1
    battle_enemy_inkp1.xj = 0
    instance_destroy(gb)
    instance_destroy(gb1_1)
    instance_destroy(gb1_2)
    instance_destroy(gb1_3)
    camera.angle = 0
    instance_destroy()
}