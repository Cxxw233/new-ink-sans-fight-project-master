// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fadeOut(argument0) //gml_Script_fadeOut
{
    if (argument0 != 0)
        image_alpha -= (1 / argument0)
    else
        image_alpha -= 0.1
    if (image_alpha <= 0)
        instance_destroy()
    return;
}

 
