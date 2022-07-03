// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_brust(){
var ins = instance_create_depth(argument[0], argument[1], -6, obj_brust_1)
ins.angle = argument[2]
ins.sp = argument[3]
return ins;
}