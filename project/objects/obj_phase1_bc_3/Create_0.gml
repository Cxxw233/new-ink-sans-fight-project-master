Battle_SetSoul(battle_soul_red)
battle_soul.x = 320
battle_soul.y = 310
repeat (2)
{
    var gb_x = random_range(44, 606)
    var gb_y = random_range(144, 244)
    var angle = random(360)
    var i = 0
    if (i <= 28)
    {
        crgb(random(640), -100, gb_x, gb_y, 0, bssp7, bssp8, bssp9, (20 + (i * 3)), 0.5, 0.5, 0, 0, ((i * 45) + angle), ((i * 45) + angle), gb)
        for (i++; i <= 28; i++)
            crgb(random(640), -100, gb_x, gb_y, 0, bssp7, bssp8, bssp9, (20 + (i * 3)), 0.5, 0.5, 0, 0, ((i * 45) + angle), ((i * 45) + angle), gb)
    }
}
time = 0
