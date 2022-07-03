
 time += 1
var hx = (obj_enc_player.x + sprite_get_width(spr_enc_chara_right))
var hy = (obj_enc_player.y + (sprite_get_height(spr_enc_chara_right) / 2))
switch time
{
    case 0:
    case 10:
    case 20:
    case 30:
        draw_sprite(spr_battle_soul_red, 0, hx, hy)
        break
    case 5:
    case 15:
    case 25:
        draw_set_color(c_black)
        draw_rectangle(0, 0, 640, 480, false)
        break
}

if (time >= 31)
{
    instance_destroy()
    instance_create_depth(hx, hy, 0,obj_enc_heart)
}

 