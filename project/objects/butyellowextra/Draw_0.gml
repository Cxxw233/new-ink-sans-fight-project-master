if instance_exists(battle_soul)
{
    draw_set_color(c_white)
    if (instance_exists(butyellowe7) && instance_exists(bkyellowextra) && tl2 > 0 && !instance_exists(battle_soul_machine))
    {
        tl2++
        if (tl2 <= 9)
            draw_line_width(butyellowe7.x, butyellowe7.y, (butyellowe7.x + (((battle_soul.x - butyellowe7.x) * tl2) / 9)), (butyellowe7.y + (((battle_soul.y - butyellowe7.y) * tl2) / 9)), 2)
        if (tl2 == 9)
        {
            p = battle_soul.x
            q = battle_soul.y
        }
        if (tl2 > 9 && tl2 <= 18)
        {
            draw_line_width(butyellowe7.x, butyellowe7.y, (butyellowe7.x + (((p - butyellowe7.x) * (18 - tl2)) / 9)), (butyellowe7.y + (((q - butyellowe7.y) * (18 - tl2)) / 9)), 2)
            battle_soul.x = (butyellowe7.x + (((p - butyellowe7.x) * (18 - tl2)) / 9))
            battle_soul.y = (butyellowe7.y + (((q - butyellowe7.y) * (18 - tl2)) / 9))
        }
        if (tl2 <= 18)
        {
            draw_line_width((butyellowe7.x - 6), (butyellowe7.y - 6), ((butyellowe7.x - 6) - ((bkyellowextra.ws * tl2) / 36)), ((butyellowe7.y - 6) - ((bkyellowextra.hs * tl2) / 36)), 3)
            draw_line_width((butyellowe7.x + 6), (butyellowe7.y - 6), ((butyellowe7.x + 6) + ((bkyellowextra.ws * tl2) / 36)), ((butyellowe7.y - 6) - ((bkyellowextra.hs * tl2) / 36)), 3)
            draw_line_width((butyellowe7.x - 6), (butyellowe7.y + 6), ((butyellowe7.x - 6) - ((bkyellowextra.ws * tl2) / 36)), ((butyellowe7.y - 6) + ((bkyellowextra.hs * tl2) / 36)), 3)
            draw_line_width((butyellowe7.x + 6), (butyellowe7.y + 6), ((butyellowe7.x + 6) + ((bkyellowextra.ws * tl2) / 36)), ((butyellowe7.y - 6) + ((bkyellowextra.hs * tl2) / 36)), 3)
        }
        if (tl2 > 18 && tl2 < 120)
        {
            if (abs((battle_soul.x - butyellowe7.x)) >= 5 || abs((battle_soul.y - butyellowe7.y)) >= 5)
            {
                battle_soul.x = butyellowe7.x
                battle_soul.y = butyellowe7.y
            }
            draw_line_width((butyellowe7.x - 6), (butyellowe7.y - 6), (bkyellowextra.xs + 3), (bkyellowextra.ys + 3), 3)
            draw_line_width((butyellowe7.x + 6), (butyellowe7.y - 6), ((bkyellowextra.xs + bkyellowextra.ws) - 3), (bkyellowextra.ys + 3), 3)
            draw_line_width((butyellowe7.x - 6), (butyellowe7.y + 6), (bkyellowextra.xs + 3), ((bkyellowextra.ys + bkyellowextra.hs) - 3), 3)
            draw_line_width((butyellowe7.x + 6), (butyellowe7.y + 6), ((bkyellowextra.xs + bkyellowextra.ws) - 3), ((bkyellowextra.ys + bkyellowextra.hs) - 3), 3)
        }
        if (tl2 > 120 && tl2 < 138)
        {
            draw_line_width((butyellowe7.x - 6), (butyellowe7.y - 6), ((butyellowe7.x - 6) - ((bkyellowextra.ws * (138 - tl2)) / 36)), ((butyellowe7.y - 6) - ((bkyellowextra.hs * (138 - tl2)) / 36)), 3)
            draw_line_width((butyellowe7.x + 6), (butyellowe7.y - 6), ((butyellowe7.x + 6) + ((bkyellowextra.ws * (138 - tl2)) / 36)), ((butyellowe7.y - 6) - ((bkyellowextra.hs * (138 - tl2)) / 36)), 3)
            draw_line_width((butyellowe7.x - 6), (butyellowe7.y + 6), ((butyellowe7.x - 6) - ((bkyellowextra.ws * (138 - tl2)) / 36)), ((butyellowe7.y - 6) + ((bkyellowextra.hs * (138 - tl2)) / 36)), 3)
            draw_line_width((butyellowe7.x + 6), (butyellowe7.y + 6), ((butyellowe7.x + 6) + ((bkyellowextra.ws * (138 - tl2)) / 36)), ((butyellowe7.y - 6) + ((bkyellowextra.hs * (138 - tl2)) / 36)), 3)
        }
        if (tl2 > 138)
            tl2 = 0
    }
    if (instance_exists(butyellowe7) && instance_exists(bkyellowextra) && tl2 >= 0 && instance_exists(battle_soul_machine))
    {
        tl2++
        if (tl2 <= 9)
            draw_line_width(butyellowe7.x, butyellowe7.y, (butyellowe7.x + (((battle_soul.x - butyellowe7.x) * tl2) / 9)), (butyellowe7.y + (((battle_soul.y - butyellowe7.y) * tl2) / 9)), 2)
        if (tl2 == 9)
        {
            p = battle_soul.x
            q = battle_soul.y
        }
        if (tl2 > 9 && tl2 <= 18)
        {
            draw_line_width(butyellowe7.x, butyellowe7.y, (butyellowe7.x + (((p - butyellowe7.x) * (18 - tl2)) / 9)), (butyellowe7.y + (((q - butyellowe7.y) * (18 - tl2)) / 9)), 2)
            battle_soul.x = (butyellowe7.x + (((p - butyellowe7.x) * (18 - tl2)) / 9))
            battle_soul.y = (butyellowe7.y + (((q - butyellowe7.y) * (18 - tl2)) / 9))
        }
        if (tl2 <= 18)
        {
            draw_line_width((butyellowe7.x - 6), (butyellowe7.y - 6), ((butyellowe7.x - 6) - ((bkyellowextra.ws * tl2) / 36)), ((butyellowe7.y - 6) - ((bkyellowextra.hs * tl2) / 36)), 3)
            draw_line_width((butyellowe7.x + 6), (butyellowe7.y - 6), ((butyellowe7.x + 6) + ((bkyellowextra.ws * tl2) / 36)), ((butyellowe7.y - 6) - ((bkyellowextra.hs * tl2) / 36)), 3)
            draw_line_width((butyellowe7.x - 6), (butyellowe7.y + 6), ((butyellowe7.x - 6) - ((bkyellowextra.ws * tl2) / 36)), ((butyellowe7.y - 6) + ((bkyellowextra.hs * tl2) / 36)), 3)
            draw_line_width((butyellowe7.x + 6), (butyellowe7.y + 6), ((butyellowe7.x + 6) + ((bkyellowextra.ws * tl2) / 36)), ((butyellowe7.y - 6) + ((bkyellowextra.hs * tl2) / 36)), 3)
        }
        if (tl2 > 18 && tl2 < 967)
        {
            draw_line_width((butyellowe7.x - 6), (butyellowe7.y - 6), (bkyellowextra.xs + 3), (bkyellowextra.ys + 3), 3)
            draw_line_width((butyellowe7.x + 6), (butyellowe7.y - 6), ((bkyellowextra.xs + bkyellowextra.ws) - 3), (bkyellowextra.ys + 3), 3)
            draw_line_width((butyellowe7.x - 6), (butyellowe7.y + 6), (bkyellowextra.xs + 3), ((bkyellowextra.ys + bkyellowextra.hs) - 3), 3)
            draw_line_width((butyellowe7.x + 6), (butyellowe7.y + 6), ((bkyellowextra.xs + bkyellowextra.ws) - 3), ((bkyellowextra.ys + bkyellowextra.hs) - 3), 3)
        }
        if (tl2 > 765 && tl2 < 783)
        {
            draw_line_width((butyellowe7.x - 6), (butyellowe7.y - 6), ((butyellowe7.x - 6) - ((bkyellowextra.ws * (783 - tl2)) / 36)), ((butyellowe7.y - 6) - ((bkyellowextra.hs * (783 - tl2)) / 36)), 3)
            draw_line_width((butyellowe7.x + 6), (butyellowe7.y - 6), ((butyellowe7.x + 6) + ((bkyellowextra.ws * (783 - tl2)) / 36)), ((butyellowe7.y - 6) - ((bkyellowextra.hs * (783 - tl2)) / 36)), 3)
            draw_line_width((butyellowe7.x - 6), (butyellowe7.y + 6), ((butyellowe7.x - 6) - ((bkyellowextra.ws * (783 - tl2)) / 36)), ((butyellowe7.y - 6) + ((bkyellowextra.hs * (783 - tl2)) / 36)), 3)
            draw_line_width((butyellowe7.x + 6), (butyellowe7.y + 6), ((butyellowe7.x + 6) + ((bkyellowextra.ws * (783 - tl2)) / 36)), ((butyellowe7.y - 6) + ((bkyellowextra.hs * (783 - tl2)) / 36)), 3)
        }
        if (tl2 > 783)
            tl2 = -1
    }
}
