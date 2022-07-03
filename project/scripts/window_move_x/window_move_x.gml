// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function window_move_x(){
var wx = window_get_x()
var wy = window_get_y()
window_set_position((wx + argument[0]), wy)
return 1;
}