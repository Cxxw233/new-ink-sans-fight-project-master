if (xt == global.xt_begin)
{
Battle_SetSoul(battle_soul_red)
    time += 1
    gd += 2
    if (gd > 90)
        gd = 0
    if (time >= 160)
        star_2 = 1
    if (frac((time / 2)) == 0)
{(instance_create_depth(random(640), -100, -7, obj_phase1_9_star)).gravity_direction = (270 + gd)}
  if (frac((time / 2)) == 0){
  (instance_create_depth(-100, random(480), -7, obj_phase1_9_star)).gravity_direction = (0 + gd)}
       if (frac((time / 2)) == 0){
	   (instance_create_depth(740, random(480), -7, obj_phase1_9_star)).gravity_direction = (180 + gd)
	   }
    if (time >= 300)
        Battle_EndTurn()
}

 