if(damage<=0){
	draw_sprite_ext(spr_battle_damage_miss,0,xstart,y,1,1,0,c_gray,1);
}else{
	var STR=string(damage);
	var LEN=string_length(STR);
	var SPR_W=sprite_get_width(btingdetermine);
	var draw_x=x;
	
	if(LEN%2!=0){
		draw_x-=(LEN-1)*((SPR_W+1)/2);
	}else{
		draw_x-=((SPR_W)/2)+(LEN/2-1)*(SPR_W+1);
	}
	var proc=1;
	repeat(LEN){
		draw_sprite_ext(btingdetermine,real(string_char_at(STR,proc)),draw_x,y,1,1,0,color,1);
		draw_x+=SPR_W+1;
		proc+=1;
	}
}