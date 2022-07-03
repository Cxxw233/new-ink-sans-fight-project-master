b += 1
if (b == 1)
    image_alpha = 2
if (b > 1 && b <= 15)
    image_alpha -= 0.2
if (b == 15)
    instance_destroy()
