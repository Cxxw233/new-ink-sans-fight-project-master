image_alpha += (alpha_speed * k)
if (image_alpha >= 1)
    k = -1
if (image_alpha < 0 && k == -1)
    instance_destroy()
 
