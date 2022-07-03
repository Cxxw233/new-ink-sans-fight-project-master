// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_blackscreen(){
var ins = instance_create_depth(-333, -333, 0, obj_blackscreen)
ins.time = argument[0]
return ins;
}