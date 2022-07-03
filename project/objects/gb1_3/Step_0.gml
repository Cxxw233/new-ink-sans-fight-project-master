if variable_instance_exists(id, "scale")
    var per = (scale * 8)
else
    per = 8
if !instance_exists(obj_Reset)
camera_set_view_pos(view_camera[0], (camera_get_view_x(view_camera[0]) + random_range((-per), per)), (camera_get_view_y(view_camera[0]) + random_range((-per), per)))
