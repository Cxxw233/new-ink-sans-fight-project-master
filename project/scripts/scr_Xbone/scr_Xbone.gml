// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Xbone(argument0,argument1,argument2,argument3){
var a=instance_create_depth(argument0,argument1,0,but156_6)
a.image_angle=argument2
a.time=argument3
var b=instance_create_depth(argument0,argument1,0,but156_6)
b.image_angle=argument2+90
b.time=argument3
return;
}