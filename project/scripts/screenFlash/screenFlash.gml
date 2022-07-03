// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screenFlash(argument0){
    var inst = instance_create_depth(__view_get((0 << 0), 0), __view_get((1 << 0), 0), 0,objScreenFlash)
    if argument0
        inst.time = argument0
    else
        inst.time = 10
    return;
}