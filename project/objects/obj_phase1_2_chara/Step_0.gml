switch time
{
    case 0:
        obj_phase1_2_bone_1.speed = 0
        obj_phase1_2_bone_2.speed = 0
        break
        break
    case 30:
        with (obj_phase1_2_bone_1)
        {
            speed = 4.3333
            direction += 180
        }
        with (obj_phase1_2_bone_2)
        {
            speed = 4.3333
            direction += 180
        }
        if instance_exists(battle_turn_2)
         battle_turn_2.xt = (global.xt_begin + 1)
        break
        instance_destroy()
        break
}
time += 1

 