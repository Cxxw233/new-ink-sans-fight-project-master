if (instance_exists(obj_enc_talk) == 0 && instance_exists(obj_enc_meet_temp) == 0)
{
    if keyboard_check(vk_left)
    {
        x -= 2.5
        faces = "left"
    }
    if keyboard_check(vk_down)
    {
        y += 2.5
        faces = "down"
    }
    if keyboard_check(vk_up)
    {
        y -= 2.5
        faces = "up"
    }
    if keyboard_check(vk_right)
    {
        x += 2.5
        faces = "right"
    }
}
if (xprevious != x || yprevious != y)
    index += 0.1
else
    index = 0
sprite_index = asset_get_index(("spr_enc_chara_" + faces))
image_index = floor(index)
if x > 320
camera.x=x-320
if y < 260 && y > 340
camera.y=y-260+(340-y)

