time += 1
draw_set_font(fntbigdetermine2)
draw_set_color(c_white)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
if (time <= 120)
    draw_text(320, 240, "BETA END.")
if (time == 120)
    audio_play_sound(inkbgmp5_2, 100, false)
if (time > 120)
{
    for (var i = 0; i <= (array_length_1d(text) - 1); i++)
        draw_text(320, ((0 - (i * 100)) + ((time - 120) * 2)), text[i])
    if (audio_is_playing(inkbgmp5_2) == 0)
        game_end()
}
