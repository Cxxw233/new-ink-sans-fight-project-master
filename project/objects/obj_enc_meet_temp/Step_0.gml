time += 1
if (time <= 180)
{
    camera_set_view_target(view_camera[0], -4)
    camera_set_view_pos(view_camera[0], (camera_get_view_x(view_camera[0]) + 1.5), camera_get_view_y(view_camera[0]))
}

 