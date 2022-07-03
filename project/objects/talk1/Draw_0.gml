draw_self()
if global.isf=0
draw_set_font(fntbigdetermine2)
if global.isf=1
draw_set_font(inksays)
draw_text_color((x + 36), (y + 10), string_copy(strs, 1, count), c_black, c_black, c_black, c_black, 1)
strs = string_replace_all(strs, "/", "\n")
draw += 1
while (draw >= time && count < string_length(strs))
{
    if (string_char_at(strs, (count + 1)) != "_")
        count += 1
    else
        strs = string_delete(strs, (count + 1), 1)
    draw -= time
}
if keyboard_check_pressed(ord("X"))or keyboard_check_pressed(vk_shift)
    time = 0
if (count >= string_length(strs) && (keyboard_check_pressed(ord("Z"))or keyboard_check_pressed(vk_enter)))
{
	battle_turn.xt+=1
	if instance_exists(but19)
	but19.xt+=1
    instance_destroy()
}

 