image_alpha -= 0.2
if (image_alpha <= 0)
    instance_destroy()
else
    alarm[1] = 1
