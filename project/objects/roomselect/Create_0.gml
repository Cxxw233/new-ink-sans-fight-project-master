pd = 0
global.phase = 1
if file_exists("temp")
{
    f = file_bin_open("temp", 0)
    pd = file_bin_read_byte(f)
    file_bin_close(f)
}
if (pd == 0)
{
    if (!file_exists("temp"))
    {
        f = file_bin_open("temp", 1)
        file_bin_write_byte(f, 0)
        file_bin_close(f)
    }
}
if (pd >= 1)
{
    global.phase = pd+1
}
instance_destroy()

