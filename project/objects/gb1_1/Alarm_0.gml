mk = instance_create_depth((lengthdir_x(16, (image_angle - 90)) + x), (lengthdir_y(16, (image_angle - 90)) + y),depth-1,gb1_2)
mk.image_angle = image_angle
mk.image_yscale = 100
mk.fast=fast
if (spr > 0)
    mk.sprite_index = spr
g = 1