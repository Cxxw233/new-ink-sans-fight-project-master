image_alpha += 0.05
a++
if (a == 30)
{
    direction = (0 + (x < -5 * 180))
    speed = -8
    gravity_direction = (0 + (x < -5 * 180))
    gravity = 2
}
if instance_exists(battle_soul)
{
    if place_meeting(x, y, battle_soul)
    {
        bkgreenextra.bl1 = 1
		Battle_SetSoul(battle_soul_snow)
        if (!audio_is_playing(Ice_heart))
            audio_play_sound(Ice_heart, 1, false)
    }
}
if (x > 1000)
    instance_destroy()

 
