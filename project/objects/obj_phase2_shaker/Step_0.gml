time += 1
if (time <= 60)
{
    camera_set_view_pos(camera, (camera_get_view_x(camera) + random_range(-20, 20)), (camera_get_view_y(camera) + random_range(-20, 20)))
    window_move_x(random_range(-4, 4))
    window_move_y(random_range(4, 4))
}
else
    camera_set_view_pos(camera, 0, 0)

 