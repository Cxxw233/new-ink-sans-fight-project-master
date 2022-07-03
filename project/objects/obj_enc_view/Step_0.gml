var cam = view_camera[0]
if (instance_exists(obj_enc_player) && instance_exists(obj_enc_meet))
{
    if (obj_enc_player.x > 320)
    {
        var special = obj_enc_meet.talking != 0
        if (special == 0)
        {
            camera_set_view_target(cam, 859)
            camera_set_view_border(cam, 320, 0)
        }
        else
            camera_set_view_target(cam, -4)
    }
    else
        camera_set_view_target(cam, -4)
}

 