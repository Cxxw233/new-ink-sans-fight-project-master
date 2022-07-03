if instance_exists(battle_soul)
{
    draw_set_color(c_black)
    draw_primitive_begin(5)
    draw_vertex((x - 2), (y - 2))
    draw_vertex(((x - 2) + lengthdir_x(200, point_direction(battle_soul.x, battle_soul.y, (x - 2), (y - 2)))), ((y - 2) + lengthdir_y(200, point_direction(battle_soul.x, battle_soul.y, (x - 2), (y - 2)))))
    draw_vertex((x + 2), (y - 2))
    draw_vertex(((x + 2) + lengthdir_x(200, point_direction(battle_soul.x, battle_soul.y, (x + 2), (y - 2)))), ((y - 2) + lengthdir_y(200, point_direction(battle_soul.x, battle_soul.y, (x + 2), (y - 2)))))
    draw_vertex((x + 2), (y + 2))
    draw_vertex(((x + 2) + lengthdir_x(200, point_direction(battle_soul.x, battle_soul.y, (x + 2), (y + 2)))), ((y + 2) + lengthdir_y(200, point_direction(battle_soul.x, battle_soul.y, (x + 2), (y + 2)))))
    draw_vertex((x - 2), (y + 2))
    draw_vertex(((x - 2) + lengthdir_x(200, point_direction(battle_soul.x, battle_soul.y, (x - 2), (y + 2)))), ((y + 2) + lengthdir_y(200, point_direction(battle_soul.x, battle_soul.y, (x - 2), (y + 2)))))
    draw_vertex((x - 2), (y - 2))
    draw_primitive_end()
}


