time++
if (time >= time_release)
{
    time = 0
    if (color_mode == "orange")
    {
            color = c_orange
            image_index = 1
        color_mode = "blue"
    }
    else
    {

            color = 16776960
            image_index = 0

        color_mode = "orange"
    }
    var ins = instance_create_depth(x, y, -3, circle)
    ins.image_blend = color
}
image_alpha += 0.05
if (time < 8)
{
    image_xscale += 0.2
    image_yscale += 0.2
}
if (time >= 8 && time < 9)
{
    image_xscale -= 0.2
    image_yscale -= 0.2
}
if (time >= 10)
{
    image_xscale = 1
    image_yscale = 1
}
 
