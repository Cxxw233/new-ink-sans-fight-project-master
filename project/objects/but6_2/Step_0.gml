if (image_index < 8 && bl1 == 0)
{
    image_index++
    if (image_index == 8)
        bl1 = 1
}
if (image_index > 0 && bl1 == 2)
{
    image_index--
    if (image_index == 0)
    {
        bl1 = 3
        instance_destroy()
    }
}
xx+=0.05
x-=xx
