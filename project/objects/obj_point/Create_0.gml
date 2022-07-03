time_dir = 0
time_change = (irandom(60) + 1)
mode = 0
if (irandom(1) == 1)
{
    mode = 1
    direction = irandom_range(30, 150)
    speed = (irandom(4) + 1)
}
else
{
    mode = 0
    direction = 90
    speed = (irandom(4) + 1)
}
image_alpha = 0

 