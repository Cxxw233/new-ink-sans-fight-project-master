event_inherited()
if (rot == 1)
    image_angle += 5
b += 10
if frac(b / 2) == 0
{
    c = instance_create_depth(x, y,0, star_22)
    c.image_index = 0
    c.image_angle = image_angle
}
x-=3
y+=12
if (y>500){instance_destroy()}