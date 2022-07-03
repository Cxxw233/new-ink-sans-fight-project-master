if xt=0{
a+=1
if de=1{
  alp-=0.1
  if alp<0{
    instance_destroy()
  }
}
yshen1=sin(a/25)*3
draw_sprite_ext(bssp173b1,0,260,71,1,1,0,c_white,alp)
draw_sprite_ext(bssp172b1,0,260,71+yshen1,1,1,0,c_white,alp)
}
if xt=1{
a+=1
if de=1{
  alp-=0.1
  if alp<0{
    instance_destroy()
  }
}
yshen1=sin(a/25)*3
draw_sprite_ext(bssp173b1,0,260,71,1,1,0,c_white,alp)
draw_sprite_ext(bssp172c1,0,260,71+yshen1,1,1,0,c_white,alp)
}
if xt=2{
	a += 1
if (de == 1)
{
    alp -= 0.1
    if (alp < 0)
        instance_destroy()
}
yshen1 = (sin((a / 25)) * 3)
ytou1 = (sin(((a + 3) / 25)) * 3.2)
draw_sprite_ext(bssp172, 1, 260, (71 + yshen1), 1, 1, 0, c_white, alp)
draw_sprite_ext(bssp173, 0, 260, 71, 1, 1, 0, c_white, alp)
draw_sprite_ext(bssp172a1, 0, 260, (71 + ytou1), 1, 1, 0, c_white, alp)
draw_sprite_ext(bssp172, 0, 260, (71 + yshen1), 1, 1, 0, c_white, alp)
}
if xt=3{
	a += 1
if (de == 1)
{
    alp -= 0.1
    if (alp < 0)
        instance_destroy()
}
yshen1 = (sin((a / 25)) * 3)
ytou1 = (sin(((a + 3) / 25)) * 3.2)
draw_sprite_ext(bssp172, 1, 260, (71 + yshen1), 1, 1, 0, c_white, alp)
draw_sprite_ext(bssp173, 0, 260, 71, 1, 1, 0, c_white, alp)
draw_sprite_ext(bssp172a3, 0, 260, (71 + ytou1), 1, 1, 0, c_white, alp)
draw_sprite_ext(bssp172, 0, 260, (71 + yshen1), 1, 1, 0, c_white, alp)
}
