function fadeIn(argument0) //gml_Script_fadeIn
{
    if (image_alpha <= 1)
    {
        if (argument0 != 0)
            image_alpha += (1 / argument0)
        else
            image_alpha += 0.1
    }
    else
        image_alpha = 1
    return;
}
