switch time
{
    case 5:
        battle_enemy_inkp1.shenxt = bssp2a1
        break
    case 10:
        battle_enemy_inkp1.shenxt = bssp2a2
        instance_destroy()
        break
}

time += 1

 