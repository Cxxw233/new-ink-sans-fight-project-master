if global.phase = 1
{
switch(Battle_GetTurnNumber()){
	case 0:
	instance_create_depth(0,0,0,battle_turn_start);
	break;
	case 13:
	instance_create_depth(0,0,0,battle_turn_final);
	break;
}
if Battle_GetTurnNumber()!=0 && Battle_GetTurnNumber()!=13
{
    instance_create_depth(0,0,0, asset_get_index(("battle_turn_" + string(irandom_range(1, 12)))))
}
}
if global.phase = 2
{
switch(Battle_GetTurnNumber()){
	case 0:
	instance_create_depth(0,0,0,battle_turn_intro);
	break;
	case 1:
	instance_create_depth(0,0,0,battle_turn_13);
	break;
    case 2:
	instance_create_depth(0,0,0,battle_turn_14);
	break;
    case 3:
	instance_create_depth(0,0,0,battle_turn_15);
	break;
    case 4:
	instance_create_depth(0,0,0,battle_turn_16);
	break;
    case 5:
	instance_create_depth(0,0,0,battle_turn_17);
	break;
    case 6:
	instance_create_depth(0,0,0,battle_turn_18);
	break;
    case 7:
	instance_create_depth(0,0,0,battle_turn_19);
	break;
    case 8:
	instance_create_depth(0,0,0,battle_turn_over);
	break;
	case 9:
	instance_create_depth(0,0,0,battle_turn_begin);
	break;
}
}
if global.phase = 3
{
	if over = 0 &&bthp[1] <=0&& bthp[2] <=0&& bthp[3] <=0&& bthp[4] <=0&& bthp[5] <=0&& bthp[6] <=0&& bthp[7] <=0&& bthp[8] <=0
	{
		instance_create_depth(0,0,0,battle_turn_end);
		over=1
	}
	else{
	color=irandom_range(1,8)
	//color=8
	//测试
	switch color{
	case 1:
	instance_create_depth(0,0,0,choose(battle_turn_green_1,battle_turn_green_2))
	break
	case 2:
	instance_create_depth(0,0,0,choose(battle_turn_aqua_1,battle_turn_aqua_2))
	break;
	case 3:
	instance_create_depth(0,0,0,choose(battle_turn_blue_1,battle_turn_blue_2))
	break
	case 4:
	instance_create_depth(0,0,0,choose(battle_turn_purple_1,battle_turn_purple_2))
	break;
	case 5:
	instance_create_depth(0,0,0,choose(battle_turn_pink_1,battle_turn_pink_2))
	break;
	case 6:
	instance_create_depth(0,0,0,choose(battle_turn_red_1,battle_turn_red_2))
	break;
	case 7:
	instance_create_depth(0,0,0,choose(battle_turn_orange_1,battle_turn_orange_2))
	break;
	case 8:
	instance_create_depth(0,0,0,choose(battle_turn_yellow_1,battle_turn_yellow_2))
	break;
}
}
}
if global.phase = 5
{
switch(Battle_GetTurnNumber()){
	case 0:
	instance_create_depth(0,0,0,battle_turn_but99);
	break;
	case 1:
	instance_create_depth(0,0,0,battle_turn_end99);
	break;
}
}
