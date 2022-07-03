// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Input_IsPressed(){
	var INPUT = argument[0]
var state = Input_GetState(INPUT)
return state == (2 << 0);

}
