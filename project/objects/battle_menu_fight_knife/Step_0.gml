/*if(_input_acceptable){
	if((_dir==DIR.LEFT&&_aim_x<=battle_board.x-battle_board.left-sprite_get_width(spr_battle_menu_fight_aim)/2) || (_dir==DIR.RIGHT&&_aim_x>=battle_board.x+battle_board.right+sprite_get_width(spr_battle_menu_fight_aim)/2)){
			Battle_SetMenuFightDamage(-1);
			Battle_EndMenuFightAim();
			_input_acceptable=false;
	}
	
	if(Input_IsPressed(INPUT.CONFIRM)&&_input_acceptable){
		Anim_Destroy(id,"_aim_x");
		alarm[0]=1;
		
		var ATK=Player_GetAtkTotal();
		var DEF=Battle_GetEnemyDEF(Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy()));
		var DISTANCE=point_distance(x,y,_aim_x,y);
		var WIDTH=sprite_get_width(spr_battle_menu_fight_bg)/2;
		var damage=ATK-DEF+random(2);
		if(DISTANCE<=12){
			damage*=2.2;
		}else{
			damage*=(1-DISTANCE/WIDTH)*2;
		}
		damage=round(damage);
		if(damage<=0){
			damage=1;
		}
		
		Battle_SetMenuFightDamage(damage);
		Battle_SetMenuFightAnimTime(50);
		Battle_SetMenuFightDamageTime(45);
		Battle_EndMenuFightAim();
		_input_acceptable=false;
	}
}*/
if global.phase=3{
image_index = 1
}
else{
image_index = 0}
if global.phase!=3{
if global.ends=0{
if instance_exists(battle_menu_fight_anim_knife)
xt=1
if xt=1
time++
if time>0&&time<=20
battle_enemy_inkp1.xj-=5
if time=60
instance_create_depth(battle_enemy_inkp1.x, battle_enemy_inkp1.y-100, 0, battle_damage)
if time>80&&time<=100
battle_enemy_inkp1.xj+=5
}
if global.ends=1{
if instance_exists(battle_menu_fight_anim_knife)
xt=1
if xt=1
time++
if time=60
instance_create_depth(battle_enemy_inkp1.x, battle_enemy_inkp1.y-100, 0, battle_damage)
}
if global.ends=2{
if instance_exists(battle_menu_fight_anim_knife)
xt=1
if xt=1
time++
if time=60
instance_create_depth(battle_enemy_inkp1.x, battle_enemy_inkp1.y-100, 0, battle_damage_p5)
}
}
if _input_acceptable
{  
    if ((_dir == 180 && _aim_x <= ((battle_board.x - battle_board.left) - (sprite_get_width(spr_battle_menu_fight_aim) / 2))) || (_dir == 0 && _aim_x >= ((battle_board.x + battle_board.right) + (sprite_get_width(spr_battle_menu_fight_aim) / 2))))
    {
        Battle_SetMenuFightDamage(-1)
        Battle_EndMenuFightAim()
        _input_acceptable = 0
    }
    if (Input_IsPressed(4) && _input_acceptable)
    {
        Anim_Destroy(id, "_aim_x")
        alarm[0] = 1
        var ATK = Player_GetAtkTotal()
        var DEF = Battle_GetEnemyDEF(Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy()))
        var DISTANCE = point_distance(x, y, _aim_x, y)
        var WIDTH = (sprite_get_width(spr_battle_menu_fight_bg) / 2)
        var damage = ((ATK - DEF) + random(2))
        if (DISTANCE <= 12)
            damage *= 2.2
        else
            damage *= ((1 - (DISTANCE / WIDTH)) * 2)
        damage = round(damage)
        if (damage <= 0)
            damage = 1
        Battle_SetMenuFightDamage(damage)
        Battle_SetMenuFightAnimTime(50)
        Battle_SetMenuFightDamageTime(45)
        Battle_EndMenuFightAim()
        _input_acceptable = 0
    }
}

