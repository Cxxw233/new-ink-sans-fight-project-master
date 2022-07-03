b+=1
if frac(b/4)=0{
  a+=1
  if ((a>0 && a<4) or a=7) ytou-=2
  if (a=4 or a=5 or a=10 or a=11) ytou+=2
  if (a=6 or a=8) xtou-=2
  if (a=2 or a=12) {xtou+=2;yshen-=2}
  if a=8 yshen-=2
  if (a=5 or a=9 or a=11) yshen+=2
  if (a=5 or a=8) xshen-=2
  if (a=2 or a=12) xshen+=2
  if a=12{
    a=0
  }
}
draw_sprite_ext(bssp56,0,272+xj,204+yj,1,1,0,c_white,image_alpha)
draw_sprite_ext(bssp55,shenxt,260+xshen+xj,152+yshen+yj,1,1,0,c_white,image_alpha)
draw_sprite_ext(bssp54,touxt,258+xtou+xj,110+ytou+yj,1,1,0,c_white,image_alpha)

