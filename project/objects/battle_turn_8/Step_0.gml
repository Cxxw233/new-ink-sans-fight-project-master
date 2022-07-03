if (xt == global.xt_begin)
{
	if xtt = 0
    time += 1
    if (to_end >9)
    {   
        xtt = 1 
        camera.angle = 0
    }
	if xtt = 1
	Battle_EndTurn()
    switch time
    {           
		case 1:
		scr_blackscreen(15)
		break
		case 3:
		    sj=irandom_range(1, 8)
			battle_soul.x=320
			battle_soul.y=310
			break
        case 5:{
            camera.angle=choose(0, 90, 180, 270)
        switch sj
		{
	        case 1:
                instance_create_depth(0, 0, 0, obj_phase1_bc_1)
				break
			case 2:
                instance_create_depth(0, 0, 0, obj_phase1_bc_2)
				break
	        case 3:
                instance_create_depth(0, 0, 0, obj_phase1_bc_3)
				break
			case 4:
                instance_create_depth(0, 0, 0, obj_phase1_bc_4)
				break
	        case 5:
                instance_create_depth(0, 0, 0, obj_phase1_bc_5)
				break
			case 6:
                instance_create_depth(0, 0, 0, obj_phase1_bc_6)
				break
	        case 7:
                instance_create_depth(0, 0, 0, obj_phase1_bc_7)
				break
			case 8:
                instance_create_depth(0, 0, 0, obj_phase1_bc_8)
				break   
		}
		break}
		break
    }

}
switch (sj){
	case 1:
	Battle_SetBoardSize(55,55,175,170,0);
	break;
	case 2:
	Battle_SetBoardSize(65,65,145,145,0);
	break;
	case 3:
	Battle_SetBoardSize(75,65,85,85,0);
	break;
	case 4:
	Battle_SetBoardSize(75,65,72.5,72.5,0);
	break;
	case 5:
	Battle_SetBoardSize(75,65,85,85,0);
	break;
	case 6:
	Battle_SetBoardSize(295,135,65,65,0);
	break;
	case 7:
	Battle_SetBoardSize(75,65,75,75,0);
	break;
	case 8:
	Battle_SetBoardSize(75,65,75,75,0);
	break;
}


 