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
time++
if time%20=0{
Player_SetHp(99)
}
if a1<=0{
xtt=1}
if xtt=1{
a1+=1}
if a1=255{
xtt=2}
if xtt=2{
a1-=1}
if a2<=0{
xttt=1}
if xttt=1{
a2+=1}
if a2>=255{
xttt=2}
if xttt=2{
a2-=1}
if a3<=0{
xtttt=1}
if xtttt=1{
a3+=3}
if a3>=255{
xtttt=2}
if xtttt=2{
a3-=3}