switch time
{
    case 0:
        battle_enemy_inkp1.touxts = 3
        break
    case 5:
        battle_enemy_inkp1.shenxt = bssp2a1
        break
    case 10:
        battle_enemy_inkp1.shenxt = bssp2a2
        break
    case 40:
        instance_destroy()
}
camera.angle+=4.5
time += 1
