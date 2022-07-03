draw_self()
if ((con == 1) && (skip == 0))
{
    x += floor(((idealx - x) / 3))
    y += floor(((idealy - y) / 3))
    if (x < idealx)
        x += 1
    if (y < idealy)
        y += 1
    if (x > idealx)
        x -= 1
    if (y > idealy)
        y -= 1
    if (abs((x - idealx)) < 3)
        x = idealx
    if (abs((y - idealy)) < 3)
        y = idealy
    if ((abs((x - idealx)) < 0.1) && (abs((y - idealy)) < 0.1))
    {
        con = 2
        alarm[4] = 2
    }
}
if ((con == 1) && (skip == 1))
{
    x += floor(((idealx - x) / 3))
    y += floor(((idealy - y) / 3))
    if (x < idealx)
        x += 1
    if (y < idealy)
        y += 1
    if (x > idealx)
        x -= 1
    if (y > idealy)
        y -= 1
    if (abs((x - idealx)) < 3)
        x = idealx
    if (abs((y - idealy)) < 3)
        y = idealy
    image_angle += floor(((idealrot - image_angle) / 3))
    if (image_angle < idealrot)
        image_angle += 1
    if (image_angle > idealrot)
        image_angle -= 1
    if (abs((image_angle - idealrot)) < 3)
        image_angle = idealrot
    if ((abs((x - idealx)) < 0.1) && ((abs((y - idealy)) < 0.1) && (abs((idealrot - image_angle)) < 0.01)))
    {
        con = 4
        alarm[4] = pause
    }
}
if (con == 3)
{
    image_angle += floor(((idealrot - image_angle) / 3))
    if (image_angle < idealrot)
        image_angle += 1
    if (image_angle > idealrot)
        image_angle -= 1
    if (abs((image_angle - idealrot)) < 3)
        image_angle = idealrot
    if (abs((idealrot - image_angle)) < 0.01)
    {
        con = 4
        alarm[4] = pause
    }
}
if (con == 5)
{
    con = 6
    alarm[4] = 4
}
if (con == 6)
    image_index += 1
if (con == 7)
{
    if (image_index == 4)
        image_index = 5
    else if (image_index == 5)
        image_index = 4
    direction = (idealrot + 90)
    btimer += 1
    if (btimer < 5)
    {
        speed += 1
        bt += floor(((35 * image_xscale) / 4))
    }
    else
        speed += 4
    if (btimer > (5 + terminal))
    {
        bt *= 0.8
        fade -= 0.1
        draw_set_alpha(fade)
        if (bt <= 2)
            instance_destroy()
    }
    if (x < (-sprite_width*2)+__view_get( e__VW.XView, 0 ))
        speed = 0
    if (x > (room_width + sprite_width*2)+__view_get( e__VW.XView, 0 ))
        speed = 0
    if (y > (room_height + sprite_height*2)+__view_get( e__VW.YView, 0 ))
        speed = 0
    if (y < (-sprite_height*2)+__view_get( e__VW.YView, 0 ))
        speed = 0
        
    bbsiner += 1
    bb = ((sin((bbsiner / 1.5)) * bt) / 4)
    xx = (lengthdir_x(80, (image_angle - 90)) * (image_xscale / 2))
    yy = (lengthdir_y(80, (image_angle - 90)) * (image_xscale / 2))
    rr = (random(2) - random(2))
    rr2 = (random(2) - random(2))
    xxx = lengthdir_x(19000, (image_angle - 90))//hasd
    yyy = lengthdir_y(19000, (image_angle - 90))//saduhk
    draw_set_color(c_white)
    draw_line_width(((x + xx) + rr), ((y + yy) + rr2), ((x + xxx) + rr), ((y + yyy) + rr2), (bt + bb))
    xxa = (lengthdir_x(70, (image_angle - 90)) * (image_xscale / 2))
    yya = (lengthdir_y(70, (image_angle - 90)) * (image_xscale / 2))
    xxb = (lengthdir_x(60, (image_angle - 90)) * (image_xscale / 2))
    yyb = (lengthdir_y(60, (image_angle - 90)) * (image_xscale / 2))
    draw_line_width(((x + xx) + rr), ((y + yy) + rr2), ((x + xxa) + rr), ((y + yya) + rr2), ((bt / 2) + bb))
    draw_line_width(((x + xx) + rr), ((y + yy) + rr2), ((x + xxb) + rr), ((y + yyb) + rr2), ((bt / 1.25) + bb))
    bb = ((sin((bbsiner / 1.5)) * bt) / 4)
    xx = (lengthdir_x(82, (image_angle - 90)) * (image_xscale / 2))
    yy = (lengthdir_y(82, (image_angle - 90)) * (image_xscale / 2))
    rr = (random(2) - random(2))
    rr2 = (random(2) - random(2))
    xxx = lengthdir_x(1300, (image_angle - 90))
    yyy = lengthdir_y(1300, (image_angle - 90))    
    nx_factor = lengthdir_x(1, image_angle)
    ny_factor = lengthdir_y(1, image_angle)
    atk=0
    if ((col_o == 1) && (fade >= 0.8))
    {
        for (cl = 0; cl < 4; cl += 1)
        {
            if collision_line(((x + xx) - (((nx_factor * bt) / 2) * (cl / 4))), ((y + yy) - (((ny_factor * bt) / 2) * (cl / 4))), ((x + xxx) - (((nx_factor * bt) / 2) * (cl / 4))), ((y + yyy) - (((ny_factor * bt) / 2) * (cl / 4))), obj_soul, false, true)
                with(obj_soul)event_user(7)
        }
    }
    if(atk=1)
    event_user(7)
    if (col_o == 0)
        col_o = 1
    draw_set_alpha(1)
}


