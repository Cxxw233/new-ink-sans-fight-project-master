// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function so(){
var vrd = 0
    if (argument_count >= 5)
        vrd = argument[4]
    var dir = argument[3]
    for (var i = 1; i <= argument[0]; i++)
    {
        var inst = instance_create_depth(x, y, 0,argument[2])
        inst.speed = argument[1]
        inst.direction = (dir + ((360 / argument[0]) * i))
        inst.image_index = i
        inst.kind = vrd
    }
    return;
}
