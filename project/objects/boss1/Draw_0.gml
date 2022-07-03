if phase=0{
b+=1
if frac(b/2)=0{
  a+=1
  if a=1{
    ytou1-=2
  }
  if a=2{
    ytou1-=2
    xtou1+=2
    yshen1-=2
    xshen1+=2
  }
  if a=3{
    ytou1-=2
  }
  if a=4{
    ytou1+=2
  }
  if a=5{
    ytou1+=2
    yshen1+=2
    xshen1-=2
  }
  if a=6{
    xtou1-=2
  }
  if a=7{
    ytou1-=2
  }
  if a=8{
    xtou1-=2
    yshen1-=2
    xshen1-=2
  }
  if a=9{
    yshen1+=2
  }
  if a=10{
    ytou1+=2
  }
  if a=11{
    ytou1+=2
    yshen1+=2
  }
  if a=12{
    xtou1+=2
    xshen1+=2
    yshen1-=2
    a=0
  }
	}
	draw_sprite_ext(bssp3a1,jioxt,272+xj,182+yj,1,1,0,c_white,image_alpha)
	draw_sprite_ext(bssp2a3,shenxt,240+xshen1+xj,104+yshen1+yj,1,1,0,c_white,image_alpha)
    draw_sprite_ext(bssp1a3,touxt,284+xtou1+xj,76+ytou1+yj,1,1,0,c_white,image_alpha)
if bting=1{
  v=-16
  bting=2
}
if bting=2{
  xj+=v
  v+=1
  if v=17{
    alarm[0]=5
    bting=3
    v=0
  }
}
if but1xy=1{
  v=-16
  but1xy=2
}
if but1xy=2{
  xj+=v
  v+=1
  if v=17{
    but1xy=0
    v=0
  }
}
if but1xy=3{
  v=16
  but1xy=4
}
if but1xy=4{
  xj+=v
  v-=1
  if v=0{
    but1xy=0
  }
}
if but1xy=5{
  v=-16
  but1xy=6
}
if but1xy=6{
  xj+=v
  v+=1
  if v=0{
    but1xy=0
  }
}
}
if phase = 1 
{
    a++
    yshen = (sin((a / 30)) * 2)
    ytou = (sin((a / 30)) * 3)
    draw_sprite_ext(bssp3a1, jioxt, (272 + xj), (182 + yj), 1, 1, 0, c_white, image_alpha)
    draw_sprite_ext(bssp2a3, shenxt, ((240 + xshen) + xj), ((104 + yshen) + yj), 1, 1, 0, c_white, image_alpha)
    draw_sprite_ext(bssp1a3, touxt, ((284 + xtou) + xj), ((76 + ytou) + yj), 1, 1, 0, c_white, image_alpha)
    if (bting == 1)
    {
        v++
        if (v == 17)
        {
            alarm[0] = 5
            bting = 3
            v = 0
        }
    }
}

 
