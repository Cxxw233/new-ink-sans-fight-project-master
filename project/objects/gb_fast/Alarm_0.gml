mk=instance_create_depth(x,y,0,gb1_1)
ed = true;
if spr>0{
  mk.sprite_index=spr
}
if spr2>0{
  mk.spr=spr2
}
mk.fast=1
mk.tlong=tlong2
mk.image_angle=image_angle
mk.ids=id
mk.xsca=xsca
//mk.depth=DEPTH_BATTLE.BULLET;
ui=1
god=1
instance_create_depth(0,0,0,gb1_3)
