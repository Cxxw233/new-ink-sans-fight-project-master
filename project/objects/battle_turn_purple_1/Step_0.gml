tl1 += 1
if tl1 = 1{
	hell=irandom_range(0,1000)
Battle_SetSoul(obj_phase2_4_soul)
obj_phase2_4_soul.x=320
obj_phase2_4_soul.y=300
    with (battle_board){
        alpha=0
        alpha_bg=0
        alpha_frame=0}
    instance_create_depth(230, 250, 2, obj_phase2_4_board)
}
if (tl1 > 120 && tl1 < 600)
{
    time1 += 1
    if (time1 >= time2)
    {
        time1 = 0
        time2 -= 3
        var gb_x_start = choose(random_range(-300, -100), random_range(740, 1040))
        var gb_y_start = random_range(-200, -100)
        var gb_x_end = random(640)
        var gb_y_end = random(480)
        var gb_angle = (point_direction(gb_x_end, gb_y_end, obj_phase2_4_soul.x, obj_phase2_4_soul.y) + 90)
        crgb(gb_x_start, gb_y_start, gb_x_end, gb_y_end, 40, bssp7, bssp8, bssp9, 120, 1, 1, 0, 0, gb_angle, 30, gb)
    }
}
if (tl1 > 120 && (tl1 % 80) == 0 && tl1 < 600)&&hell=66
{
    if instance_exists(obj_phase2_4_soul)
    {
        var gb_x_start = choose(random_range(-150, -50), random_range(370, 520))
        var gb_y_start = random_range(-200, -100)
        var gb_x_end = random_range(60, 600)
        var gb_y_end = random_range(40, 380)
        var gb_angle = (point_direction(gb_x_end, gb_y_end, obj_phase2_4_soul.x, obj_phase2_4_soul.y) + 90)
        crgb(gb_x_start-30, gb_y_start-30, gb_x_end-30, gb_y_end-30, 20, bssp7, bssp8, bssp9, 60, 1, 1, 0, 0, gb_angle-20, 30, gb)
    }
}
if (tl1 > 720){
instance_create_depth(320,310,0,battle_soul_red)
instance_destroy(obj_phase2_4_soul)
  with (battle_board){
        alpha=1
        alpha_bg=1
        alpha_frame=1}
    if instance_exists(obj_phase2_4_board)
        instance_destroy(obj_phase2_4_board)
    instance_destroy()
     Battle_EndTurn()
}