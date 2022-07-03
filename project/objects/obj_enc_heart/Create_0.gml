var vx = camera_get_view_x(view_camera[0])
global.map=0
move_towards_point((vx + 320), 240, (distance_to_point((vx + 320), 240) / 30))
alarm[0] = 30
if (global.TIMES_INCREASE == 0)
{
    ds_map_set(global.map, "ENCOUNTED_TIMES", (global.ENCOUNTED_TIMES + 1))
    file_delete("ENTERY_FINAL")
    ds_map_secure_save(global.map, "ENTERY_FINAL")
    global.TIMES_INCREASE = 1
}
else
    global.TIMES_INCREASE = 0

 