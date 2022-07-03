image_angle -= 4.5
time += 1
if (time >= 240)
    image_alpha -= 0.03
if (image_alpha <= 0)
    instance_destroy()
