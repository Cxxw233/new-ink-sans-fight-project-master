a++
xs = bkaquaextra.xs
ys = bkaquaextra.ys
ws = bkaquaextra.ws
hs = bkaquaextra.hs
direction += ((cos((a / 5)) * 15) * ac)
    if (x < ((xs + 5) + 8))
        x = ((xs + 5) + 8)
    if (y < ((ys + 5) + 8))
        y = ((ys + 5) + 8)
    if (x > (((xs + ws) - 5) - 8))
        x = (((xs + ws) - 5) - 8)
    if (y > (((ys + hs) - 5) - 8))
        y = (((ys + hs) - 5) - 8)
if (dmg == 1 && place_meeting(x, y, battle_soul))
{
  Player_Hurt()
}
