event_inherited(); 	
//移动
if(Battle_GetState()==BATTLE_STATE.IN_TURN && moveable){
	var SPD=Player_GetSpdTotal()
	var SPD=(Input_IsHeld(INPUT.CANCEL) ? SPD/2 : SPD);
	repeat(SPD*10){
		if(Input_IsHeld(INPUT.UP)){
			if(!position_meeting(x,y-sprite_height/2,block)){
				y-=0.1;
			}
		}
		if(Input_IsHeld(INPUT.DOWN)){
			if(!position_meeting(x,y+sprite_height/2,block)){
				y+=0.1;
			}
		}
		if(Input_IsHeld(INPUT.LEFT)){
			if(!position_meeting(x-sprite_width/2,y,block)){
				x-=0.1;
			}
		}
		if(Input_IsHeld(INPUT.RIGHT)){
			if(!position_meeting(x+sprite_width/2,y,block)){
				x+=0.1;
			}
		}
	}
}
        if keyboard_check_pressed(vk_return)
        {
            if (instance_number(playerbullet) < 4)
            {
                mk = instance_create_depth(x, y, -100, playerbullet)
                mk.image_angle = (image_angle + 180)
            }
        }
