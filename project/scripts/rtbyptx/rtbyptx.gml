// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function rtbyptx(argument0, argument1, argument2) //gml_Script_rtbyptx
{
    return (lengthdir_x(point_distance(0, 0, argument0, argument1), point_direction(0, 0, argument0, argument1)) + lengthdir_x(point_distance(argument0, argument1, 0, 0), (point_direction(argument0, argument1, 0, 0) + argument2)));
}
