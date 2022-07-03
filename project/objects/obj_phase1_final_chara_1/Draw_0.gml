time += 1
if (time <= 15)
{
    pen_x_extra += ((pen_x - 20) / 15)
    pen_y_extra += ((pen_y - 250) / 15)
    instance_create_depth((pen_x - pen_x_extra), (pen_y - pen_y_extra), 0, obj_phase1_final_pen_fake)
}
if (time >= 45 && time <= 60)
{
    pen_x_extra -= 33.333333333333336
    instance_create_depth((pen_x - pen_x_extra), (pen_y - pen_y_extra), 0, obj_phase1_final_pen_fake)
    var in_range = ((pen_x - pen_x_extra) > 102 || (pen_x - pen_x_extra) < 532)
    if (in_range == 1 && irandom(8) == 1)
        instance_create_depth((pen_x - pen_x_extra), random_range(250, 385), 0, obj_phase1_final_heart_fake)
    if (time == 52)
        instance_create_depth((pen_x - pen_x_extra), random_range(250, 385), 0, obj_phase1_final_heart_fake)
    if (time == 60)
    {
        if instance_exists(battle_turn_final)
        {
            battle_turn_final.xt = (global.xt_begin + 1)
            instance_destroy()
        }
    }
}
draw_sprite(bssp4, 0, (pen_x - pen_x_extra), (pen_y - pen_y_extra))

 