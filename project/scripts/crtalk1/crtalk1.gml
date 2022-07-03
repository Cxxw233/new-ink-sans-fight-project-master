// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function crtalk1(){
var c = instance_create_depth(argument[0], argument[1], -100, talk1)
c.strs = argument[2]
c.time = argument[3]
c.objs = id
return c;
}