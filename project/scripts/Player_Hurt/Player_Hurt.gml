function Player_Hurt(argument0,argument1) {
	if global.ukr=1{
battle_enemy_inkp1.nowhppl-=1
battle_enemy_inkp1.nowkr+=3
	}
if global.ukr=0{
	if (battle_soul._inv=0){
	with(battle_soul){
		event_user(BATTLE_SOUL_EVENT.HURT);
	}
battle_enemy_inkp1.nowhppl-=10
}
}
return
}
/*
function Player_Hurt() {
	var DAMAGE=argument[0];

	if(DAMAGE>=0){
		var HP=Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.HP);
		Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.HP,(HP-DAMAGE>=0 ? HP-DAMAGE : 0));
		return true;
	}else{
		return Player_Heal(-DAMAGE);
	}


}
