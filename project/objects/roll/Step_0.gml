if (chosen == 0)
{
    if (time == 0)
    {
        time = 1
        __view_set((4 << 0), 0, ang)
    }
    __view_set((4 << 0), 0, (__view_get((4 << 0), 0) - (__view_get((4 << 0), 0) / 10)))
    if (__view_get((4 << 0), 0) < 0.2)
    {
        __view_set((4 << 0), 0, 0)
        instance_destroy()
    }
}
if (chosen == 1)
{
    if (time == 0)
    {
        time = 1
        __view_set((4 << 0), 0, ang)
    }
    __view_set((4 << 0), 0, (__view_get((4 << 0), 0) + ((360 - __view_get((4 << 0), 0)) / 10)))
    if (__view_get((4 << 0), 0) > 365.8)
    {
        __view_set((4 << 0), 0, 360)
        instance_destroy()
    }
}
