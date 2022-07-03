time += 1
if (time >= 120)
{
    battle_turn_8.time = 0
    battle_turn_8.to_end += 1
    instance_destroy()
    instance_destroy(obj_brust_1)
    instance_destroy(obj_brust_2)
}

 