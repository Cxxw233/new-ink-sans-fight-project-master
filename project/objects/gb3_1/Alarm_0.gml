mk = instance_create_depth((lengthdir_x(16, (image_angle - 90)) + x), (lengthdir_y(16, (image_angle - 90)) + y),depth-1,gb3_2)
mk.image_angle = image_angle
mk.image_yscale = 100
if (spr > 0)
    mk.sprite_index = spr
g = 1