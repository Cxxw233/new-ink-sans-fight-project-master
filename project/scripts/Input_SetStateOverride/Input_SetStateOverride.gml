// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GMU_Input_GetState(){
var INPUT = argument[0]
var map = global._gmu_input
if ds_map_exists(map, INPUT)
{ 
    var list = ds_map_find_value(map, INPUT)
    var result = 0
    var proc = 0
    repeat ds_list_size(list)
    {
        var map_bind = ds_list_find_value(list, proc)
        var type = ds_map_find_value(map_bind, "type")
        var device = ds_map_find_value(map_bind, "device")
        var button = ds_map_find_value(map_bind, "button")
        switch type
        {
            case 0:
                if keyboard_check(button)
                    result = 1
                if keyboard_check_pressed(button)
                    result = 2
                if keyboard_check_released(button)
                    result = 3
                break
            case 1:
                if gamepad_button_check(device, button)
                    result = 1
                if gamepad_button_check_pressed(device, button)
                    result = 2
                if gamepad_button_check_released(device, button)
                    result = 3
                break
            case 2:
                if mouse_check_button(button)
                    result = 1
                if mouse_check_button_pressed(button)
                    result = 2
                if mouse_check_button_released(button)
                    result = 3
                break
        }

        proc += 1
    }
    return result;
}
else
    return 0;

}
