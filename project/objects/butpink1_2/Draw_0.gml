var playerx=battle_soul.x
var playery=battle_soul.y
a += (a < 1 * 0.1)
if instance_exists(battle_soul)
{
    draw_sprite_ext(spr_battle_soul_red, -1, (485 - playerx), playery, 1, 1, 0, c_white, a)
    draw_sprite_ext(spr_battle_soul_red, -1, playerx, (325 - playery), 1, -1, 0, c_white, a)
    draw_sprite_ext(spr_battle_soul_red, -1, (795 - playerx), playery, 1, 1, 0, c_white, a)
    draw_sprite_ext(spr_battle_soul_red, -1, playerx, (635 - playery), 1, -1, 0, c_white, a)
}
