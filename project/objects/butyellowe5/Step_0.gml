increase_final += increase_speed
image_xscale += increase_final
image_yscale = image_xscale
image_alpha += 0.05
if ((image_xscale * 4) > 320)
    instance_destroy()
