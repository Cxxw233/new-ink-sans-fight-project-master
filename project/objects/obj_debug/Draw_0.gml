if global.debug == 1&&draw=1{
ca++
draw_set_font(font_mars_needs_cunnilingus);
draw_set_color(ys);
ys= make_color_hsv((ca % 255), 255, 255)
if instance_exists(battle_soul){
draw_text(0,0,"soul.x = " + string(battle_soul.x));
draw_text(0,20,"soul.y = " + string(battle_soul.y));
}
draw_text(0,40,"fps = " + string(fps));
draw_text(0,60,"turn = " + string(Battle_GetTurnNumber()));
draw_text(0,80,"phase = " + string(global.phase));
draw_text(600,0,mouse_x);
draw_text(600,20,mouse_y);

if inv = 1
draw_text(80,100,"NO HIT");
if gs = 1
draw_text(80,120,"MOUSE MODE");
}
