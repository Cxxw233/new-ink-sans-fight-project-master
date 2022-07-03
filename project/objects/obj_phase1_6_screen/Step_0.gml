var ang = ((angle_will - angle_now) / 90)
time_end = (ang * 40)
time += 1
camera_set_view_angle(view_camera[0], (ang * time))
if (time >= time_end)
    instance_destroy()
