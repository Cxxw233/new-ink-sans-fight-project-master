if (place_meeting(x, y, battle_board) && bounce == 0)
{
    GMU_Anim_New(id, "speed", 1, 11, 8, -8, 125)
    move_bounce_solid(0)
    image_angle = (direction + 90)
    bounce = 1
    GMU_Anim_New(id, "image_alpha", 1, 11, 1, -1, 30, 45, 80)
    alarm[0] = 187
}
