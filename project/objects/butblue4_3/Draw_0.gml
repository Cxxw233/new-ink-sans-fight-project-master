draw_set_color(c_blue)
for (iii = 0; iii < 23; iii++)
{
    for (jjj = (iii + 1); jjj < 24; jjj++)
    {
        if instance_exists(battle_turn_blue_2)
        {
            if (instance_exists(battle_turn_blue_2.fb[iii]) && instance_exists(battle_turn_blue_2.fb[jjj]))
            {
                draw_set_alpha(random_range(0.05, 0.3))
                draw_line(battle_turn_blue_2.fb[iii].x, battle_turn_blue_2.fb[iii].y, battle_turn_blue_2.fb[jjj].x, battle_turn_blue_2.fb[jjj].y)
            }
        }
    }
}
draw_set_alpha(1)
