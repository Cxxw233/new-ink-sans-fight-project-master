///@desc Anim
if global.phase!=3
if(Battle_GetMenuFightDamage()>=0){
	var ENEMY=Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy());
	var X=Battle_GetEnemyCenterPosX(ENEMY);
	var Y=Battle_GetEnemyCenterPosY(ENEMY);
	instance_create_depth(X,Y,0,battle_menu_fight_anim_knife);
}
if global.phase=3
{
    image_index = 1
	
    if (Battle_GetMenuFightDamage() > 0)
    {        
		if (_aim_x <= 106)
        {battle_enemy_inkp1.bthp[1]-=1
			global.ty=1
        instance_create_depth(40,40, 0, battle_menu_fight_anim_knife) 
		instance_create_depth(40,40, 0, battle_damage_p3)
        }
        else if (_aim_x > 106 && _aim_x <= 179)
        {battle_enemy_inkp1.bthp[2]-=1
			global.ty=2
           instance_create_depth(120,40, 0, battle_menu_fight_anim_knife)
		   instance_create_depth(120,40, 0, battle_damage_p3)
        }
        else if (_aim_x > 179 && _aim_x <= 246)
        {battle_enemy_inkp1.bthp[3]-=1
			global.ty=3
            instance_create_depth(200,40, 0, battle_menu_fight_anim_knife)
			instance_create_depth(200,40, 0, battle_damage_p3)
        }
        else if (_aim_x > 246 && _aim_x <= 321)
        {battle_enemy_inkp1.bthp[4]-=1
			global.ty=4
            instance_create_depth(280,40, 0, battle_menu_fight_anim_knife)
			instance_create_depth(280,40, 0, battle_damage_p3)
        }
        else if (_aim_x > 321 && _aim_x <= 398)
        {battle_enemy_inkp1.bthp[5]-=1
			global.ty=5
            instance_create_depth(360,40, 0, battle_menu_fight_anim_knife)
			instance_create_depth(360,40, 0, battle_damage_p3)
        }
        else if (_aim_x > 398 && _aim_x <= 465)
        {battle_enemy_inkp1.bthp[6]-=1
			global.ty=6
            instance_create_depth(440,40, 0, battle_menu_fight_anim_knife)
			instance_create_depth(440,40, 0, battle_damage_p3)
        }
        else if (_aim_x > 465 && _aim_x <= 533)
        {battle_enemy_inkp1.bthp[7]-=1
			global.ty=7
           instance_create_depth(520,40, 0, battle_menu_fight_anim_knife)
		   instance_create_depth(520,40, 0, battle_damage_p3)
        }
        else if (_aim_x > 533)
        {battle_enemy_inkp1.bthp[8]-=1
			global.ty=8
            instance_create_depth(600,40, 0, battle_menu_fight_anim_knife)
			instance_create_depth(600,40, 0, battle_damage_p3)
        }
    }
}

