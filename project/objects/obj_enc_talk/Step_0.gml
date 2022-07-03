draw += 1
while (draw >= sp && count < string_length(text))
{
    draw -= sp
    if (string_char_at(text, (count + 1)) != "_")
        count += 1
    else
        text = string_delete(text, (count + 1), 1)
    if (skiped == 0)
        audio_play_sound(saysans, 1, false)
}
if (count >= string_length(text) && keyboard_check_pressed(ord("Z")))
{
    instance_destroy()
    if (obj_enc_meet.talking == 0)
        instance_create_depth(x, y, depth, obj_enc_meet_temp)
    obj_enc_meet.talking += 1
}
if keyboard_check_pressed(ord("X"))
{
    skiped = 1
    sp = 0
}

 