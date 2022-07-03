if instance_exists(battle_soul)
{
    if (battle_soul.x < ((xs + 5) + 8))
        battle_soul.x = ((xs + 5) + 8)
    if (battle_soul.y < ((ys + 5) + 8))
        battle_soul.y = ((ys + 5) + 8)
    if (battle_soul.x > (((xs + ws) - 5) - 8))
        battle_soul.x = (((xs + ws) - 5) - 8)
    if (battle_soul.y > (((ys + hs) - 5) - 8))
        battle_soul.y = (((ys + hs) - 5) - 8)
}
time += 0.5
if (time == 20)
    butyellowextra.xt = 2


