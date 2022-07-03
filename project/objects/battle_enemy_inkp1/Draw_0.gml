draw_set_alpha(1)
if global.phase = 1
{
        draw_sprite(bssp5, 0, ((body_x - 34) + xj), ((body_y - 6) + yj))
        draw_sprite_ext(bssp4, 0, ((body_x - 28) + xj), ((body_y - 34) + yj),1, 1, 0, c_white, pen)
        draw_sprite(bssp3, 0, (feet_x + xj), (feet_y + yj))
        draw_sprite(shenxt, 0, (body_x + xj), (body_y + yj))
        draw_sprite(touxtt, touxts, (head_x + xj), (head_y + yj))
}
if global.phase = 2 
{
        draw_sprite(bssp5, 0, ((body_x - 34) + xj), ((body_y - 6) + yj))
        draw_sprite_ext(bssp4, 0, ((body_x - 28) + xj), ((body_y - 34) + yj),1, 1, 0, c_white, pen)
        draw_sprite(bssp3, 0, (feet_x + xj), (feet_y + yj))
        draw_sprite(shenxt, 0, (body_x + xj), (body_y + yj))
        draw_sprite(touxtt, touxts, (head_x + xj), (head_y + yj))
}
if global.phase = 3
{
        draw_sprite(bssp5, 0, ((body_x - 34) + xj), ((body_y - 6+body_yy) + yj))
        draw_sprite_ext(bssp4, 0, ((body_x - 28) + xj), ((body_y - 34+body_yy) + yj),1, 1, 0, c_white, pen)
        draw_sprite(bssp3, 0, (feet_x + xj), (feet_y + yj))
        draw_sprite(shenxt, 0, (xshen + xj), (yshen + yj+94))
        draw_sprite(touxtt, touxts, (xtou + xj), (ytou + yj+50))
}
if global.phase = 5
{
	if boss1xt=0
	{
		draw_sprite(bssp5, 0, ((body_x - 34) + xj), ((body_y - 6+body_yy) + yj))
        draw_sprite_ext(bssp4, 0, ((body_x - 28) + xj), ((body_y - 34+body_yy) + yj),1, 1, 0, c_white, pen)
        draw_sprite(bssp3, 0, (feet_x + xj), (feet_y + yj))
        draw_sprite(shenxt, 0, (xshen + xj), (yshen + yj+94))
        draw_sprite(touxtt, touxts, (xtou + xj), (ytou + yj+50))
}
	if boss1xt=1
	{
        draw_sprite(bssp5, 0, ((body_x - 34) + xj), ((body_y - 6) + yj))
        draw_sprite_ext(bssp4, 0, ((body_x - 28) + xj), ((body_y - 34) + yj),1, 1, 0, c_white, pen)
        draw_sprite(bssp3, 0, (feet_x + xj), (feet_y + yj))
        draw_sprite(shenxt, 0, (body_x + xj), (body_y + yj))
        draw_sprite(touxtt, touxts, (head_x + xj), (head_y + yj))
}
	if boss1xt=2{
        siner += 1
var body_x_ink = -cos(siner/10)*2;
var body_y_ink = -sin(siner/5)*2;
var head_x_ink = -cos(siner/10)*2 + 0.1;
var head_y_ink = -sin(siner/5)*2 + 0.1;
    draw_sprite_ext(bssp5,0,body_x+body_x_ink+xj-34,body_y+body_y_ink+yj-6,1,1,0,c_white,1);
    draw_sprite_ext(bssp4,0,body_x+body_x_ink+xj-28,body_y+body_y_ink+yj-34,1,1,0,c_white,1);
	draw_sprite_ext(bssp3,0,feet_x+xj,feet_y+yj,1,1,0,c_white,1);
	draw_sprite_ext(bssp2,0,body_x+body_x_ink+xj,body_y+body_y_ink+yj,1,1,0,c_white,1);
	draw_sprite_ext(bssp1,touxts,head_x+head_x_ink+xj,head_y+head_y_ink+yj,1,1,0,c_white,1);
}
}
if boss1xt!=2
script_execute(scr_sans_swing, global.phase)
time += 1

 